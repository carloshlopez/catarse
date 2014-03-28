class CampaignType < ActiveRecord::Base
  has_many :projects
  validates_presence_of :name_es
  validates_uniqueness_of :name_es

  def self.with_projects
    where("exists(select true from projects p where p.campaign_type_id = campaign_types.id and p.state not in('draft', 'rejected'))")
  end

  def self.array
    order('name_'+ I18n.locale.to_s + ' ASC').collect { |c| [c.send('name_' + I18n.locale.to_s), c.id] }
  end

  def to_s
    self.send('name_' + I18n.locale.to_s)
  end  
end
