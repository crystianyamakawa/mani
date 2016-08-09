require 'rails_helper'

RSpec.describe "produto_componentes/show", type: :view do
  before(:each) do
    @produto_componente = assign(:produto_componente, ProdutoComponente.create!(
      :produto_pai_id => "Produto_pai_id",
      :produto_id => 1,
      :quantidade => 1.5,
      :vl_custo => 1.5,
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Produto_pai_id/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
