class Notification < ActiveRecord::Base
  schema_associations
  belongs_to :project_update, class_name: "Update", foreign_key: :update_id # Update was an unfortunate decision, we should rename it soon

  validates_presence_of :user

  def self.notify_once(template_name, user, filter, params = {})
    notify(template_name, user, params) if is_unique?(template_name, filter)
  end

  def self.notify(template_name, user, params = {})
    puts "user locale #{user.locale} **** I18n.locale #{I18n.locale}"
    elloc = "es"
    # if (I18n.locale != "pt" and user.locale != "es")
    #   elloc = user.locale || I18n.locale
    # end

    create!({
      template_name: template_name,
      user: user,
      locale: elloc,
      origin_email: Configuration[:email_contact],
      origin_name: "Súmame" || Configuration[:company_name]
    }.merge(params)).deliver
  end

  def deliver
    unless dismissed
      NotificationWorker.perform_async(self.id)
    end
  end

  private
  def self.is_unique?(template_name, filter)
    filter.nil? || self.where(filter.merge(template_name: template_name)).empty?
  end
end
