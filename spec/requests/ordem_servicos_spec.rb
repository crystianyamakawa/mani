require 'rails_helper'

RSpec.describe "OrdemServicos", type: :request do
  describe "GET /ordem_servicos" do
    it "works! (now write some real specs)" do
      get ordem_servicos_path
      expect(response).to have_http_status(200)
    end
  end
end
