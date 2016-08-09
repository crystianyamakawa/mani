require 'rails_helper'

RSpec.describe "Etapas", type: :request do
  describe "GET /etapas" do
    it "works! (now write some real specs)" do
      get etapas_path
      expect(response).to have_http_status(200)
    end
  end
end
