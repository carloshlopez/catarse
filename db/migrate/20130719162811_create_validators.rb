class CreateValidators < ActiveRecord::Migration
  def change
    create_table :validators do |t|
      t.string :name
      t.string :site_url
      t.string :logo_url
      t.timestamps
    end
  end
end
