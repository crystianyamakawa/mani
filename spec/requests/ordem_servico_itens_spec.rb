require 'rails_helper'

RSpec.describe "OrdemServicoItens", type: :request do
  describe "GET /ordem_servico_itens" do
    it "works! (now write some real specs)" do
      get ordem_servico_itens_path
      expect(response).to have_http_status(200)
    end
  end
end
