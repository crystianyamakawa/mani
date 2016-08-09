require 'rails_helper'

RSpec.describe "OferProdutos", type: :request do
  describe "GET /ofer_produtos" do
    it "works! (now write some real specs)" do
      get ofer_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
