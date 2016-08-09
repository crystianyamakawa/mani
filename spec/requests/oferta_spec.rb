require 'rails_helper'

RSpec.describe "Oferta", type: :request do
  describe "GET /oferta" do
    it "works! (now write some real specs)" do
      get oferta_path
      expect(response).to have_http_status(200)
    end
  end
end
