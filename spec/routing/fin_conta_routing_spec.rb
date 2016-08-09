require "rails_helper"

RSpec.describe FinContaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fin_conta").to route_to("fin_conta#index")
    end

    it "routes to #new" do
      expect(:get => "/fin_conta/new").to route_to("fin_conta#new")
    end

    it "routes to #show" do
      expect(:get => "/fin_conta/1").to route_to("fin_conta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fin_conta/1/edit").to route_to("fin_conta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fin_conta").to route_to("fin_conta#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fin_conta/1").to route_to("fin_conta#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fin_conta/1").to route_to("fin_conta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fin_conta/1").to route_to("fin_conta#destroy", :id => "1")
    end

  end
end
