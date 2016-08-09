require 'rails_helper'

RSpec.describe "Equipamentos", type: :request do
  describe "GET /equipamentos" do
    it "works! (now write some real specs)" do
      get equipamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
