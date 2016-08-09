require 'rails_helper'

RSpec.describe "componentes/edit", type: :view do
  before(:each) do
    @componente = assign(:componente, Componente.create!(
      :codigo => "MyString",
      :descricao => "MyString",
      :tipo => "MyString",
      :marca_id => 1,
      :ds_modelo => "MyString",
      :vl_aquisicao => 1.5,
      :vl_venda => 1.5,
      :vl_locacao => 1.5,
      :unidade => "MyString",
      :categoria_pai_id => 1,
      :categoria_id => 1,
      :estoque_id => 1,
      :nr_patrimonio => "MyString",
      :status => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit componente form" do
    render

    assert_select "form[action=?][method=?]", componente_path(@componente), "post" do

      assert_select "input#componente_codigo[name=?]", "componente[codigo]"

      assert_select "input#componente_descricao[name=?]", "componente[descricao]"

      assert_select "input#componente_tipo[name=?]", "componente[tipo]"

      assert_select "input#componente_marca_id[name=?]", "componente[marca_id]"

      assert_select "input#componente_ds_modelo[name=?]", "componente[ds_modelo]"

      assert_select "input#componente_vl_aquisicao[name=?]", "componente[vl_aquisicao]"

      assert_select "input#componente_vl_venda[name=?]", "componente[vl_venda]"

      assert_select "input#componente_vl_locacao[name=?]", "componente[vl_locacao]"

      assert_select "input#componente_unidade[name=?]", "componente[unidade]"

      assert_select "input#componente_categoria_pai_id[name=?]", "componente[categoria_pai_id]"

      assert_select "input#componente_categoria_id[name=?]", "componente[categoria_id]"

      assert_select "input#componente_estoque_id[name=?]", "componente[estoque_id]"

      assert_select "input#componente_nr_patrimonio[name=?]", "componente[nr_patrimonio]"

      assert_select "input#componente_status[name=?]", "componente[status]"

      assert_select "input#componente_created_by[name=?]", "componente[created_by]"

      assert_select "input#componente_updated_by[name=?]", "componente[updated_by]"
    end
  end
end
