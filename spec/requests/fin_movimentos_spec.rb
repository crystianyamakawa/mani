require 'rails_helper'

RSpec.describe "FinMovimentos", type: :request do
  describe "GET /fin_movimentos" do
    it "works! (now write some real specs)" do
      get fin_movimentos_path
      expect(response).to have_http_status(200)
    end
  end
end
