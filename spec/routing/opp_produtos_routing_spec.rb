require "rails_helper"

RSpec.describe OppProdutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/opp_produtos").to route_to("opp_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/opp_produtos/new").to route_to("opp_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/opp_produtos/1").to route_to("opp_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/opp_produtos/1/edit").to route_to("opp_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/opp_produtos").to route_to("opp_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/opp_produtos/1").to route_to("opp_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/opp_produtos/1").to route_to("opp_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/opp_produtos/1").to route_to("opp_produtos#destroy", :id => "1")
    end

  end
end
