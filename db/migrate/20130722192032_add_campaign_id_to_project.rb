class AddCampaignIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :campaign_id, :integer    
  end
end
