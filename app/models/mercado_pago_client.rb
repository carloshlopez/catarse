# encoding: utf-8
require 'mercadopago.rb'
class MercadoPagoClient < ActiveRecord::Base
  belongs_to :project
  validates_uniqueness_of :project_id

  def get_token
    begin
      mp = MercadoPago.new(Configuration[:mercadopagos_client_id] , Configuration[:mercadopagos_client_secret] )
      # params = "grant_type=authorization_code&client_id=#{Configuration[:mercadopagos_client_id]}&client_secret=#{Configuration[:mercadopagos_client_secret]}&code=#{self.code}"
      params = Hash["grant_type" => "authorization_code",
        "client_id" => "#{Configuration[:mercadopagos_client_id]}",
        "client_secret" => "#{Configuration[:mercadopagos_client_secret]}",
        "code"=> "#{self.code}",
        "redirect_uri" => "#{Configuration[:base_url]}/es/mercado_pago_clients/code?project_id=#{self.project_id}"]
      resp = mp.post("/oauth/token", params)
      puts "$$$%% Esta es la url al que se hace el pedido: #{params}"
      puts "%$%$ Respuesta es #{resp.inspect}"
      self.access_token = resp['response']['access_token']
      self.refresh_token = resp['response']['refresh_token']
      self.save!
    rescue Exception => e
      puts "%$%%$$%$%%$  Error al traer token de Mercado Pagos!! #{e.message}"
    end
  end

  def notify_project_user user, mp_url
    puts "Estamos en notify"
    begin
      Notification.notify(:mp_email,
        user,
        { mp_url: mp_url }
      )
    rescue Exception => e
      puts "Error al enviar notificacion #{e.message}"
    end
  end

end
