class MercadoPagoClientsController < InheritedResources::Base
  def code
    @mercado_pago_client = MercadoPagoClient.find_by_project_id(params[:project_id])
    if params[:code]
      @mercado_pago_client.code = params[:code]
      @mercado_pago_client.get_token
      @mercado_pago_client.save!
    end
    render layout: false
  end

  def create_mercadopago_client
    begin
      @mercado_pago_client = MercadoPagoClient.create(params[:mercado_pago_client])
    rescue Exception => ex
      puts "Error creando mercado_pago_client #{ex.message}"
      @mercado_pago_client = MercadoPagoClient.find_by_project_id(params[:mercado_pago_client][:project_id])
    end
  end

  protected
  def mercado_pago_client_params
    params.permit({mercado_pago_client: [:email, :project_id, :access_token, :refresh_token, :code]})
  end
end

