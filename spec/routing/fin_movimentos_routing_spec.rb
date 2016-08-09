require "rails_helper"

RSpec.describe FinMovimentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fin_movimentos").to route_to("fin_movimentos#index")
    end

    it "routes to #new" do
      expect(:get => "/fin_movimentos/new").to route_to("fin_movimentos#new")
    end

    it "routes to #show" do
      expect(:get => "/fin_movimentos/1").to route_to("fin_movimentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fin_movimentos/1/edit").to route_to("fin_movimentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fin_movimentos").to route_to("fin_movimentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fin_movimentos/1").to route_to("fin_movimentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fin_movimentos/1").to route_to("fin_movimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fin_movimentos/1").to route_to("fin_movimentos#destroy", :id => "1")
    end

  end
end
