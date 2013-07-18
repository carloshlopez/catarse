# encoding: utf-8

class PsePaymentController < ApplicationController
	
	def receive_payment
	  a_payment = PsePayment.find(params[:NoFact])
	  a_payment.update_attributes(:tran_guid => params[:TranGuid], :ticket_id_pse=> params[:TicketId],
	   :return_code => params[:ReturnCode], :transaction_state => params[:TransactionState], 
	   :bank_process_date => params[:BankProcessDate], :solicitate_date => params[:SoliciteDate],
	   :entity_code=> params[:EntityCode], :transaction_cycle => params[:TransactionCycle],
	   :transaction_value => params[:TransactionValue], :vat_value => params[:VatValue],
	   :trazability_code => params[:TrazabilityCode], :error=> params[:Error], :nit=> params[:Nit],
	   :no_fact => params[:NoFact], :ref_1 => params[:Ref1], :ref_2=> params[:Ref2])
	  a_payment.save
      
	end

	def payment_confirmation
		@razon_social = "La Razón Social"
		@nit = "11111"
		@no_fact = "No fact"
		@ip_origen = "190."
		@tipo_doc = "NIT"
		@num_doc = "Num documento"
		@nombre_empresa = "Nombre emepresa"
		@desc = "Descripción"
		@valor_total = "Valor total"
		@iva = "16%"
		@valor_neto = "$1000"
		@valor_base_dev_iva = "$1000"
		@fecha = "30/12/2012"
		@banco = "Banco pepe"
		@num_transaccion = "Num transacción"
		@estado_trans = "oks"
	end
end
