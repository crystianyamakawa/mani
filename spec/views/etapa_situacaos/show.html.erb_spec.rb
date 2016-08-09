require 'rails_helper'

RSpec.describe "etapa_situacaos/show", type: :view do
  before(:each) do
    @etapa_situacao = assign(:etapa_situacao, EtapaSituacao.create!(
      :etapa_id => 1,
      :nm_situacao => "Nm_situacao",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nm_situacao/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
