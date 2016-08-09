require 'rails_helper'

RSpec.describe "componente_caracteristicas/show", type: :view do
  before(:each) do
    @componente_caracteristica = assign(:componente_caracteristica, ComponenteCaracteristica.create!(
      :equipamento_id => 1,
      :caracteristica_id => 2,
      :valor => "Valor",
      :unidade => "Unidade",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Valor/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
