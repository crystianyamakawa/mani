require 'rails_helper'

RSpec.describe "Componentes", type: :request do
  describe "GET /componentes" do
    it "works! (now write some real specs)" do
      get componentes_path
      expect(response).to have_http_status(200)
    end
  end
end
