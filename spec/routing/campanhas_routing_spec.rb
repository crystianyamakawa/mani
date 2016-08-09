require "rails_helper"

RSpec.describe CampanhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campanhas").to route_to("campanhas#index")
    end

    it "routes to #new" do
      expect(:get => "/campanhas/new").to route_to("campanhas#new")
    end

    it "routes to #show" do
      expect(:get => "/campanhas/1").to route_to("campanhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/campanhas/1/edit").to route_to("campanhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/campanhas").to route_to("campanhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campanhas/1").to route_to("campanhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campanhas/1").to route_to("campanhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campanhas/1").to route_to("campanhas#destroy", :id => "1")
    end

  end
end
