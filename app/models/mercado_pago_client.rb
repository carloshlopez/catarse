# encoding: utf-8
require 'mercadopago.rb'
class MercadoPagoClient < ActiveRecord::Base
  belongs_to :project
  validates_uniqueness_of :project_id

  def get_token
    begin
      mp = MercadoPago.new(Configuration[:mercadopagos_client_id] , Configuration[:mercadopagos_client_secret] )
      params = "grant_type=authorization_code&client_id=#{Configuration[:mercadopagos_client_id]}&client_secret=#{Configuration[:mercadopagos_client_secret]}&code=#{self.code}"
      resp = mp.psot("/oauth/token", params)
      puts "%$%$ Respuesta es #{resp.inspect}"
      self.access_token = @preference['response']['access_token']
      self.refresh_token = @preference['response']['refresh_token']
      self.save!
    rescue Exception => e
      puts "%$%%$$%$%%$  Error al traer token de Mercado Pagos!! #{e.message}"
    end
  end

end
