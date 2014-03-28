class CreateCampaignTypes < ActiveRecord::Migration
  def change
    create_table :campaign_types do |t|
      t.string :name_es
      t.string :name_pt
      t.string :name_en

      t.timestamps
    end
  end
end
