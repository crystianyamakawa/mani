require "rails_helper"

RSpec.describe ListaValorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lista_valors").to route_to("lista_valors#index")
    end

    it "routes to #new" do
      expect(:get => "/lista_valors/new").to route_to("lista_valors#new")
    end

    it "routes to #show" do
      expect(:get => "/lista_valors/1").to route_to("lista_valors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lista_valors/1/edit").to route_to("lista_valors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lista_valors").to route_to("lista_valors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lista_valors/1").to route_to("lista_valors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lista_valors/1").to route_to("lista_valors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lista_valors/1").to route_to("lista_valors#destroy", :id => "1")
    end

  end
end
