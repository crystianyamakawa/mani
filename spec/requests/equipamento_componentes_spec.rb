require 'rails_helper'

RSpec.describe "EquipamentoComponentes", type: :request do
  describe "GET /equipamento_componentes" do
    it "works! (now write some real specs)" do
      get equipamento_componentes_path
      expect(response).to have_http_status(200)
    end
  end
end
