class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :validator_id
      t.string :logo_url
      t.timestamps
    end
  end
end
