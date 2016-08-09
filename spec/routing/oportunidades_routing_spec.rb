require "rails_helper"

RSpec.describe OportunidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/oportunidades").to route_to("oportunidades#index")
    end

    it "routes to #new" do
      expect(:get => "/oportunidades/new").to route_to("oportunidades#new")
    end

    it "routes to #show" do
      expect(:get => "/oportunidades/1").to route_to("oportunidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/oportunidades/1/edit").to route_to("oportunidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/oportunidades").to route_to("oportunidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/oportunidades/1").to route_to("oportunidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/oportunidades/1").to route_to("oportunidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/oportunidades/1").to route_to("oportunidades#destroy", :id => "1")
    end

  end
end
