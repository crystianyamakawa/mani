require "rails_helper"

RSpec.describe ProcessoVendasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/processo_vendas").to route_to("processo_vendas#index")
    end

    it "routes to #new" do
      expect(:get => "/processo_vendas/new").to route_to("processo_vendas#new")
    end

    it "routes to #show" do
      expect(:get => "/processo_vendas/1").to route_to("processo_vendas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/processo_vendas/1/edit").to route_to("processo_vendas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/processo_vendas").to route_to("processo_vendas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/processo_vendas/1").to route_to("processo_vendas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/processo_vendas/1").to route_to("processo_vendas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/processo_vendas/1").to route_to("processo_vendas#destroy", :id => "1")
    end

  end
end
