class AddCampaignTypeToProject < ActiveRecord::Migration
  def change
    add_column :projects, :campaign_type_id, :integer
  end
end
