class MercadoPagoClientsController < InheritedResources::Base
  def code
    @mercado_pago_client = MercadoPagoClient.find_by_email_and_project_id(params[:email], params[:project_id])
    if params[:code]
      @mercado_pago_client.code = params[:code]
      @mercado_pago_client.get_token
      @mercado_pago_client.save!
    end
  end

  def create_mercadopago_client
    @mercado_pago_client = MercadoPagoClient.first_or_create(params[:mercado_pago_client])
  end

  protected
  def mercado_pago_client_params
    params.permit({mercado_pago_client: [:email, :project_id, :access_token, :refresh_token, :code]})
  end
end

