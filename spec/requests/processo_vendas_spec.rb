require 'rails_helper'

RSpec.describe "ProcessoVendas", type: :request do
  describe "GET /processo_vendas" do
    it "works! (now write some real specs)" do
      get processo_vendas_path
      expect(response).to have_http_status(200)
    end
  end
end
