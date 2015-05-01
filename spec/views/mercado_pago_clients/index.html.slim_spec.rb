require 'spec_helper'

describe "mercado_pago_clients/index" do
  before(:each) do
    assign(:mercado_pago_clients, [
      stub_model(MercadoPagoClient,
        :proyect_id => 1,
        :email => "Email",
        :code => "Code"
      ),
      stub_model(MercadoPagoClient,
        :proyect_id => 1,
        :email => "Email",
        :code => "Code"
      )
    ])
  end

  it "renders a list of mercado_pago_clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
