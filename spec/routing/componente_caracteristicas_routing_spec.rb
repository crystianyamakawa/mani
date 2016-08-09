require "rails_helper"

RSpec.describe ComponenteCaracteristicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/componente_caracteristicas").to route_to("componente_caracteristicas#index")
    end

    it "routes to #new" do
      expect(:get => "/componente_caracteristicas/new").to route_to("componente_caracteristicas#new")
    end

    it "routes to #show" do
      expect(:get => "/componente_caracteristicas/1").to route_to("componente_caracteristicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/componente_caracteristicas/1/edit").to route_to("componente_caracteristicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/componente_caracteristicas").to route_to("componente_caracteristicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/componente_caracteristicas/1").to route_to("componente_caracteristicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/componente_caracteristicas/1").to route_to("componente_caracteristicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/componente_caracteristicas/1").to route_to("componente_caracteristicas#destroy", :id => "1")
    end

  end
end
