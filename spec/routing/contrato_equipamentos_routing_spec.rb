require "rails_helper"

RSpec.describe ContratoEquipamentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contrato_equipamentos").to route_to("contrato_equipamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/contrato_equipamentos/new").to route_to("contrato_equipamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/contrato_equipamentos/1").to route_to("contrato_equipamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contrato_equipamentos/1/edit").to route_to("contrato_equipamentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contrato_equipamentos").to route_to("contrato_equipamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contrato_equipamentos/1").to route_to("contrato_equipamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contrato_equipamentos/1").to route_to("contrato_equipamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contrato_equipamentos/1").to route_to("contrato_equipamentos#destroy", :id => "1")
    end

  end
end
