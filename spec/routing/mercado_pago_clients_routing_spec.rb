require "spec_helper"

describe MercadoPagoClientsController do
  describe "routing" do

    it "routes to #index" do
      get("/mercado_pago_clients").should route_to("mercado_pago_clients#index")
    end

    it "routes to #new" do
      get("/mercado_pago_clients/new").should route_to("mercado_pago_clients#new")
    end

    it "routes to #show" do
      get("/mercado_pago_clients/1").should route_to("mercado_pago_clients#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mercado_pago_clients/1/edit").should route_to("mercado_pago_clients#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mercado_pago_clients").should route_to("mercado_pago_clients#create")
    end

    it "routes to #update" do
      put("/mercado_pago_clients/1").should route_to("mercado_pago_clients#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mercado_pago_clients/1").should route_to("mercado_pago_clients#destroy", :id => "1")
    end

  end
end
