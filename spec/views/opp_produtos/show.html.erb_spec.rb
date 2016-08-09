require 'rails_helper'

RSpec.describe "opp_produtos/show", type: :view do
  before(:each) do
    @opp_produto = assign(:opp_produto, OppProduto.create!(
      :oportunidade_id => 1,
      :produto_id => 2,
      :vl_negociado => 1.5,
      :prazo_entrega => 3,
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
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
