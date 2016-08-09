require "rails_helper"

RSpec.describe ProdutoComponentesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/produto_componentes").to route_to("produto_componentes#index")
    end

    it "routes to #new" do
      expect(:get => "/produto_componentes/new").to route_to("produto_componentes#new")
    end

    it "routes to #show" do
      expect(:get => "/produto_componentes/1").to route_to("produto_componentes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/produto_componentes/1/edit").to route_to("produto_componentes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/produto_componentes").to route_to("produto_componentes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/produto_componentes/1").to route_to("produto_componentes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/produto_componentes/1").to route_to("produto_componentes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/produto_componentes/1").to route_to("produto_componentes#destroy", :id => "1")
    end

  end
end
