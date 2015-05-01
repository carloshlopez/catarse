class CreateMercadoPagoClients < ActiveRecord::Migration
  def change
    create_table :mercado_pago_clients do |t|
      t.integer :project_id
      t.string :email
      t.string :access_token
      t.string :refresh_token
      t.string :code

      t.timestamps
    end
  end
end
