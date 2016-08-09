require "rails_helper"

RSpec.describe InteressadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/interessados").to route_to("interessados#index")
    end

    it "routes to #new" do
      expect(:get => "/interessados/new").to route_to("interessados#new")
    end

    it "routes to #show" do
      expect(:get => "/interessados/1").to route_to("interessados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/interessados/1/edit").to route_to("interessados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/interessados").to route_to("interessados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/interessados/1").to route_to("interessados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/interessados/1").to route_to("interessados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interessados/1").to route_to("interessados#destroy", :id => "1")
    end

  end
end
