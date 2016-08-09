require "rails_helper"

RSpec.describe OferProdutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ofer_produtos").to route_to("ofer_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/ofer_produtos/new").to route_to("ofer_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/ofer_produtos/1").to route_to("ofer_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ofer_produtos/1/edit").to route_to("ofer_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ofer_produtos").to route_to("ofer_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ofer_produtos/1").to route_to("ofer_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ofer_produtos/1").to route_to("ofer_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ofer_produtos/1").to route_to("ofer_produtos#destroy", :id => "1")
    end

  end
end
