require 'rails_helper'

RSpec.describe "ListaValors", type: :request do
  describe "GET /lista_valors" do
    it "works! (now write some real specs)" do
      get lista_valors_path
      expect(response).to have_http_status(200)
    end
  end
end
