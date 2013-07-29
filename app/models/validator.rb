class Validator < ActiveRecord::Base

  attr_accessible :name, :site_url, :logo_url
  has_many :campaigns
  has_many :projects, through: :campaigns
end
