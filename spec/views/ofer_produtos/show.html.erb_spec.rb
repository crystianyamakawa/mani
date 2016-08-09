require 'rails_helper'

RSpec.describe "ofer_produtos/show", type: :view do
  before(:each) do
    @ofer_produto = assign(:ofer_produto, OferProduto.create!(
      :oferta_id => 1,
      :produto_id => 2,
      :vl_oferta => 1.5,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
