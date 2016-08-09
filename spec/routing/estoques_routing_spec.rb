require "rails_helper"

RSpec.describe EstoquesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/estoques").to route_to("estoques#index")
    end

    it "routes to #new" do
      expect(:get => "/estoques/new").to route_to("estoques#new")
    end

    it "routes to #show" do
      expect(:get => "/estoques/1").to route_to("estoques#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/estoques/1/edit").to route_to("estoques#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/estoques").to route_to("estoques#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/estoques/1").to route_to("estoques#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/estoques/1").to route_to("estoques#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/estoques/1").to route_to("estoques#destroy", :id => "1")
    end

  end
end
