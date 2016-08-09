require "rails_helper"

RSpec.describe OrdemServicoItensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ordem_servico_itens").to route_to("ordem_servico_itens#index")
    end

    it "routes to #new" do
      expect(:get => "/ordem_servico_itens/new").to route_to("ordem_servico_itens#new")
    end

    it "routes to #show" do
      expect(:get => "/ordem_servico_itens/1").to route_to("ordem_servico_itens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ordem_servico_itens/1/edit").to route_to("ordem_servico_itens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ordem_servico_itens").to route_to("ordem_servico_itens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ordem_servico_itens/1").to route_to("ordem_servico_itens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ordem_servico_itens/1").to route_to("ordem_servico_itens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ordem_servico_itens/1").to route_to("ordem_servico_itens#destroy", :id => "1")
    end

  end
end
