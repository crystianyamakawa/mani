require "rails_helper"

RSpec.describe CaracteristicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/caracteristicas").to route_to("caracteristicas#index")
    end

    it "routes to #new" do
      expect(:get => "/caracteristicas/new").to route_to("caracteristicas#new")
    end

    it "routes to #show" do
      expect(:get => "/caracteristicas/1").to route_to("caracteristicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/caracteristicas/1/edit").to route_to("caracteristicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/caracteristicas").to route_to("caracteristicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/caracteristicas/1").to route_to("caracteristicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/caracteristicas/1").to route_to("caracteristicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/caracteristicas/1").to route_to("caracteristicas#destroy", :id => "1")
    end

  end
end
