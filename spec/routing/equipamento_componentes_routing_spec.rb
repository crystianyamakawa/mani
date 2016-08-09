require "rails_helper"

RSpec.describe EquipamentoComponentesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/equipamento_componentes").to route_to("equipamento_componentes#index")
    end

    it "routes to #new" do
      expect(:get => "/equipamento_componentes/new").to route_to("equipamento_componentes#new")
    end

    it "routes to #show" do
      expect(:get => "/equipamento_componentes/1").to route_to("equipamento_componentes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/equipamento_componentes/1/edit").to route_to("equipamento_componentes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/equipamento_componentes").to route_to("equipamento_componentes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/equipamento_componentes/1").to route_to("equipamento_componentes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/equipamento_componentes/1").to route_to("equipamento_componentes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/equipamento_componentes/1").to route_to("equipamento_componentes#destroy", :id => "1")
    end

  end
end
