require 'rails_helper'

RSpec.describe "produtos/show", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :tipo => "Tipo",
      :codigo => "Codigo",
      :descricao => "Descricao",
      :marca_id => "",
      :modelo => "Modelo",
      :vl_custo => 1.5,
      :vl_venda => 1.5,
      :unidade => "Unidade",
      :categoria_pai_id => 1,
      :categoria_id => 2,
      :estoque_id => 3,
      :ean => "Ean",
      :ncm => "Ncm",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Modelo/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Ean/)
    expect(rendered).to match(/Ncm/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
