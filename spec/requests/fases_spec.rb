require 'rails_helper'

RSpec.describe "Fases", type: :request do
  describe "GET /fases" do
    it "works! (now write some real specs)" do
      get fases_path
      expect(response).to have_http_status(200)
    end
  end
end
