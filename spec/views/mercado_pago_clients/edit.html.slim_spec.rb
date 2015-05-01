require 'spec_helper'

describe "mercado_pago_clients/edit" do
  before(:each) do
    @mercado_pago_client = assign(:mercado_pago_client, stub_model(MercadoPagoClient,
      :proyect_id => 1,
      :email => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit mercado_pago_client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mercado_pago_client_path(@mercado_pago_client), "post" do
      assert_select "input#mercado_pago_client_proyect_id[name=?]", "mercado_pago_client[proyect_id]"
      assert_select "input#mercado_pago_client_email[name=?]", "mercado_pago_client[email]"
      assert_select "input#mercado_pago_client_code[name=?]", "mercado_pago_client[code]"
    end
  end
end
