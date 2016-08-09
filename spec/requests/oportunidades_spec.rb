require 'rails_helper'

RSpec.describe "Oportunidades", type: :request do
  describe "GET /oportunidades" do
    it "works! (now write some real specs)" do
      get oportunidades_path
      expect(response).to have_http_status(200)
    end
  end
end
