require "rails_helper"

RSpec.describe FasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fases").to route_to("fases#index")
    end

    it "routes to #new" do
      expect(:get => "/fases/new").to route_to("fases#new")
    end

    it "routes to #show" do
      expect(:get => "/fases/1").to route_to("fases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fases/1/edit").to route_to("fases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fases").to route_to("fases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fases/1").to route_to("fases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fases/1").to route_to("fases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fases/1").to route_to("fases#destroy", :id => "1")
    end

  end
end
