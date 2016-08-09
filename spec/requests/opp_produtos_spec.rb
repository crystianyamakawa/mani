require 'rails_helper'

RSpec.describe "OppProdutos", type: :request do
  describe "GET /opp_produtos" do
    it "works! (now write some real specs)" do
      get opp_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
