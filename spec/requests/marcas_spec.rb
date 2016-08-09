require 'rails_helper'

RSpec.describe "Marcas", type: :request do
  describe "GET /marcas" do
    it "works! (now write some real specs)" do
      get marcas_path
      expect(response).to have_http_status(200)
    end
  end
end
