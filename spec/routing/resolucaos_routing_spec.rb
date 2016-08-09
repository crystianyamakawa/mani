require "rails_helper"

RSpec.describe ResolucaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resolucaos").to route_to("resolucaos#index")
    end

    it "routes to #new" do
      expect(:get => "/resolucaos/new").to route_to("resolucaos#new")
    end

    it "routes to #show" do
      expect(:get => "/resolucaos/1").to route_to("resolucaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resolucaos/1/edit").to route_to("resolucaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resolucaos").to route_to("resolucaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/resolucaos/1").to route_to("resolucaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/resolucaos/1").to route_to("resolucaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resolucaos/1").to route_to("resolucaos#destroy", :id => "1")
    end

  end
end
