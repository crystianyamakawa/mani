require 'rails_helper'

RSpec.describe "ContratoProdutos", type: :request do
  describe "GET /contrato_produtos" do
    it "works! (now write some real specs)" do
      get contrato_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
