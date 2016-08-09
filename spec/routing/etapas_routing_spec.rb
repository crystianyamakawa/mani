require "rails_helper"

RSpec.describe EtapasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/etapas").to route_to("etapas#index")
    end

    it "routes to #new" do
      expect(:get => "/etapas/new").to route_to("etapas#new")
    end

    it "routes to #show" do
      expect(:get => "/etapas/1").to route_to("etapas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/etapas/1/edit").to route_to("etapas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/etapas").to route_to("etapas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/etapas/1").to route_to("etapas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/etapas/1").to route_to("etapas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/etapas/1").to route_to("etapas#destroy", :id => "1")
    end

  end
end
