class Campaign < ActiveRecord::Base
  attr_accessible :name, :project_id, :validator_id, :logo_url
  belongs_to :validator
  has_many :projects
end
