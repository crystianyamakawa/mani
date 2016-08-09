require "rails_helper"

RSpec.describe EtapaSituacaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/etapa_situacaos").to route_to("etapa_situacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/etapa_situacaos/new").to route_to("etapa_situacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/etapa_situacaos/1").to route_to("etapa_situacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/etapa_situacaos/1/edit").to route_to("etapa_situacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/etapa_situacaos").to route_to("etapa_situacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/etapa_situacaos/1").to route_to("etapa_situacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/etapa_situacaos/1").to route_to("etapa_situacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/etapa_situacaos/1").to route_to("etapa_situacaos#destroy", :id => "1")
    end

  end
end
