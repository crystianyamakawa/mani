require 'rails_helper'

RSpec.describe "caracteristicas/show", type: :view do
  before(:each) do
    @caracteristica = assign(:caracteristica, Caracteristica.create!(
      :codigo => "Codigo",
      :descricao => "Descricao",
      :unidade => "Unidade",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
