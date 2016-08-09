require 'rails_helper'

RSpec.describe "contrato_produtos/new", type: :view do
  before(:each) do
    assign(:contrato_produto, ContratoProduto.new(
      :contrato_id => 1,
      :produto_id => 1,
      :quantidade => 1,
      :vl_tabela => 1.5,
      :vl_negociado => 1.5,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new contrato_produto form" do
    render

    assert_select "form[action=?][method=?]", contrato_produtos_path, "post" do

      assert_select "input#contrato_produto_contrato_id[name=?]", "contrato_produto[contrato_id]"

      assert_select "input#contrato_produto_produto_id[name=?]", "contrato_produto[produto_id]"

      assert_select "input#contrato_produto_quantidade[name=?]", "contrato_produto[quantidade]"

      assert_select "input#contrato_produto_vl_tabela[name=?]", "contrato_produto[vl_tabela]"

      assert_select "input#contrato_produto_vl_negociado[name=?]", "contrato_produto[vl_negociado]"

      assert_select "input#contrato_produto_created_by[name=?]", "contrato_produto[created_by]"

      assert_select "input#contrato_produto_updated_by[name=?]", "contrato_produto[updated_by]"
    end
  end
end
