require "rails_helper"

RSpec.describe ContratoProdutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contrato_produtos").to route_to("contrato_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/contrato_produtos/new").to route_to("contrato_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/contrato_produtos/1").to route_to("contrato_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contrato_produtos/1/edit").to route_to("contrato_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contrato_produtos").to route_to("contrato_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contrato_produtos/1").to route_to("contrato_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contrato_produtos/1").to route_to("contrato_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contrato_produtos/1").to route_to("contrato_produtos#destroy", :id => "1")
    end

  end
end
