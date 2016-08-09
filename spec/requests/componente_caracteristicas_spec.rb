require 'rails_helper'

RSpec.describe "ComponenteCaracteristicas", type: :request do
  describe "GET /componente_caracteristicas" do
    it "works! (now write some real specs)" do
      get componente_caracteristicas_path
      expect(response).to have_http_status(200)
    end
  end
end
