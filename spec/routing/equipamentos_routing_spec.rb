require "rails_helper"

RSpec.describe EquipamentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/equipamentos").to route_to("equipamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/equipamentos/new").to route_to("equipamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/equipamentos/1").to route_to("equipamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/equipamentos/1/edit").to route_to("equipamentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/equipamentos").to route_to("equipamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/equipamentos/1").to route_to("equipamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/equipamentos/1").to route_to("equipamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/equipamentos/1").to route_to("equipamentos#destroy", :id => "1")
    end

  end
end
