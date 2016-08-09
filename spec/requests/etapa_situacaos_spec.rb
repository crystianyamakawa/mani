require 'rails_helper'

RSpec.describe "EtapaSituacaos", type: :request do
  describe "GET /etapa_situacaos" do
    it "works! (now write some real specs)" do
      get etapa_situacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
