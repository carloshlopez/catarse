require 'spec_helper'

describe "mercado_pago_clients/show" do
  before(:each) do
    @mercado_pago_client = assign(:mercado_pago_client, stub_model(MercadoPagoClient,
      :proyect_id => 1,
      :email => "Email",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Email/)
    rendered.should match(/Code/)
  end
end
