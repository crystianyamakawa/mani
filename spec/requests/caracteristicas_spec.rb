require 'rails_helper'

RSpec.describe "Caracteristicas", type: :request do
  describe "GET /caracteristicas" do
    it "works! (now write some real specs)" do
      get caracteristicas_path
      expect(response).to have_http_status(200)
    end
  end
end
