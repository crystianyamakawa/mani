require 'rails_helper'

RSpec.describe "CategoriaProdutos", type: :request do
  describe "GET /categoria_produtos" do
    it "works! (now write some real specs)" do
      get categoria_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
