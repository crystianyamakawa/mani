require 'rails_helper'

RSpec.describe "produtos/edit", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :tipo => "MyString",
      :codigo => "MyString",
      :descricao => "MyString",
      :marca_id => "",
      :modelo => "MyString",
      :vl_custo => 1.5,
      :vl_venda => 1.5,
      :unidade => "MyString",
      :categoria_pai_id => 1,
      :categoria_id => 1,
      :estoque_id => 1,
      :ean => "MyString",
      :ncm => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input#produto_tipo[name=?]", "produto[tipo]"

      assert_select "input#produto_codigo[name=?]", "produto[codigo]"

      assert_select "input#produto_descricao[name=?]", "produto[descricao]"

      assert_select "input#produto_marca_id[name=?]", "produto[marca_id]"

      assert_select "input#produto_modelo[name=?]", "produto[modelo]"

      assert_select "input#produto_vl_custo[name=?]", "produto[vl_custo]"

      assert_select "input#produto_vl_venda[name=?]", "produto[vl_venda]"

      assert_select "input#produto_unidade[name=?]", "produto[unidade]"

      assert_select "input#produto_categoria_pai_id[name=?]", "produto[categoria_pai_id]"

      assert_select "input#produto_categoria_id[name=?]", "produto[categoria_id]"

      assert_select "input#produto_estoque_id[name=?]", "produto[estoque_id]"

      assert_select "input#produto_ean[name=?]", "produto[ean]"

      assert_select "input#produto_ncm[name=?]", "produto[ncm]"

      assert_select "input#produto_created_by[name=?]", "produto[created_by]"

      assert_select "input#produto_updated_by[name=?]", "produto[updated_by]"
    end
  end
end
