class CreatePsePayments < ActiveRecord::Migration
  def change
    create_table :pse_payments do |t|
	  t.string :tran_guid
	  t.string :ticket_id_pse
	  t.string :return_code
	  t.string :transaction_state
	  t.string :bank_process_date
	  t.string :solicitate_date
	  t.string :entity_code
	  t.string :transaction_cycle
	  t.string :transaction_value
	  t.string :vat_value
	  t.string :trazability_code
	  t.string :error
	  t.string :nit
	  t.string :no_fact
	  t.string :ref_1
	  t.string :ref_2
      t.timestamps
    end
  end
end
