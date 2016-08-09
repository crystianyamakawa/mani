require 'rails_helper'

RSpec.describe "categoria_produtos/show", type: :view do
  before(:each) do
    @categoria_produto = assign(:categoria_produto, CategoriaProduto.create!(
      :nome => "Nome",
      :categoria_pai_id => 1,
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
