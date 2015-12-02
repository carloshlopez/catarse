class MercadoPagoAdminWorker
  include Sidekiq::Worker
  sidekiq_options retry: 5

  def perform mercado_pago_client_id
  	begin
	  	puts "Estamos en perform con #{mercado_pago_client_id}"
	  	mercado_pago_client = MercadoPagoClient.find mercado_pago_client_id
	    user = User.find_by_email(mercado_pago_client.email)
	    mp_url = "#{MERCADOPAGO_AUTH_URL}#{Rails.application.routes.url_helpers.mercado_pago_clients_code_url}?project_id=#{mercado_pago_client.project_id}"
	    mercado_pago_client.notify_project_user(user, mp_url) 
  	rescue Exception => e
  		puts "Error en MercadoPagoAdminWorker #{e.message}"
  	end

  end
end
