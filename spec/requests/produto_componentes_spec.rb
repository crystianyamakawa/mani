require 'rails_helper'

RSpec.describe "ProdutoComponentes", type: :request do
  describe "GET /produto_componentes" do
    it "works! (now write some real specs)" do
      get produto_componentes_path
      expect(response).to have_http_status(200)
    end
  end
end
