require "rails_helper"

RSpec.describe OrdemServicosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ordem_servicos").to route_to("ordem_servicos#index")
    end

    it "routes to #new" do
      expect(:get => "/ordem_servicos/new").to route_to("ordem_servicos#new")
    end

    it "routes to #show" do
      expect(:get => "/ordem_servicos/1").to route_to("ordem_servicos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ordem_servicos/1/edit").to route_to("ordem_servicos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ordem_servicos").to route_to("ordem_servicos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ordem_servicos/1").to route_to("ordem_servicos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ordem_servicos/1").to route_to("ordem_servicos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ordem_servicos/1").to route_to("ordem_servicos#destroy", :id => "1")
    end

  end
end
