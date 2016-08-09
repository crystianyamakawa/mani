require 'rails_helper'

RSpec.describe "SistemaParametros", type: :request do
  describe "GET /sistema_parametros" do
    it "works! (now write some real specs)" do
      get sistema_parametros_path
      expect(response).to have_http_status(200)
    end
  end
end
