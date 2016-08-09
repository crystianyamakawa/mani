require "rails_helper"

RSpec.describe MotivosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/motivos").to route_to("motivos#index")
    end

    it "routes to #new" do
      expect(:get => "/motivos/new").to route_to("motivos#new")
    end

    it "routes to #show" do
      expect(:get => "/motivos/1").to route_to("motivos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/motivos/1/edit").to route_to("motivos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/motivos").to route_to("motivos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/motivos/1").to route_to("motivos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/motivos/1").to route_to("motivos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/motivos/1").to route_to("motivos#destroy", :id => "1")
    end

  end
end
