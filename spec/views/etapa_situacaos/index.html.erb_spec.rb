require 'rails_helper'

RSpec.describe "etapa_situacaos/index", type: :view do
  before(:each) do
    assign(:etapa_situacaos, [
      EtapaSituacao.create!(
        :etapa_id => 1,
        :nm_situacao => "Nm_situacao",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      EtapaSituacao.create!(
        :etapa_id => 1,
        :nm_situacao => "Nm_situacao",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of etapa_situacaos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nm_situacao".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
