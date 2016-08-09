require 'rails_helper'

RSpec.describe "ContratoEquipamentos", type: :request do
  describe "GET /contrato_equipamentos" do
    it "works! (now write some real specs)" do
      get contrato_equipamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
