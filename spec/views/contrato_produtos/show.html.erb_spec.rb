require 'rails_helper'

RSpec.describe "contrato_produtos/show", type: :view do
  before(:each) do
    @contrato_produto = assign(:contrato_produto, ContratoProduto.create!(
      :contrato_id => 1,
      :produto_id => 2,
      :quantidade => 3,
      :vl_tabela => 1.5,
      :vl_negociado => 1.5,
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
