class AddAcceptsPaymentOptionsToProyect < ActiveRecord::Migration
  def change
  	add_column :projects, :accepts_pagosonline, :boolean, default: true
  	add_column :projects, :accepts_mercadopago, :boolean, default: false
  end
end
