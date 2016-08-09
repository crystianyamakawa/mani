require 'rails_helper'

RSpec.describe "produto_componentes/new", type: :view do
  before(:each) do
    assign(:produto_componente, ProdutoComponente.new(
      :produto_pai_id => "MyString",
      :produto_id => 1,
      :quantidade => 1.5,
      :vl_custo => 1.5,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new produto_componente form" do
    render

    assert_select "form[action=?][method=?]", produto_componentes_path, "post" do

      assert_select "input#produto_componente_produto_pai_id[name=?]", "produto_componente[produto_pai_id]"

      assert_select "input#produto_componente_produto_id[name=?]", "produto_componente[produto_id]"

      assert_select "input#produto_componente_quantidade[name=?]", "produto_componente[quantidade]"

      assert_select "input#produto_componente_vl_custo[name=?]", "produto_componente[vl_custo]"

      assert_select "input#produto_componente_created_by[name=?]", "produto_componente[created_by]"

      assert_select "input#produto_componente_updated_by[name=?]", "produto_componente[updated_by]"
    end
  end
end
