require 'rails_helper'

RSpec.describe "equipamentos/edit", type: :view do
  before(:each) do
    @equipamento = assign(:equipamento, Equipamento.create!(
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
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit equipamento form" do
    render

    assert_select "form[action=?][method=?]", equipamento_path(@equipamento), "post" do

      assert_select "input#equipamento_codigo[name=?]", "equipamento[codigo]"

      assert_select "input#equipamento_descricao[name=?]", "equipamento[descricao]"

      assert_select "input#equipamento_tipo[name=?]", "equipamento[tipo]"

      assert_select "input#equipamento_marca_id[name=?]", "equipamento[marca_id]"

      assert_select "input#equipamento_ds_modelo[name=?]", "equipamento[ds_modelo]"

      assert_select "input#equipamento_vl_aquisicao[name=?]", "equipamento[vl_aquisicao]"

      assert_select "input#equipamento_vl_venda[name=?]", "equipamento[vl_venda]"

      assert_select "input#equipamento_vl_locacao[name=?]", "equipamento[vl_locacao]"

      assert_select "input#equipamento_unidade[name=?]", "equipamento[unidade]"

      assert_select "input#equipamento_categoria_pai_id[name=?]", "equipamento[categoria_pai_id]"

      assert_select "input#equipamento_categoria_id[name=?]", "equipamento[categoria_id]"

      assert_select "input#equipamento_estoque_id[name=?]", "equipamento[estoque_id]"

      assert_select "input#equipamento_nr_patrimonio[name=?]", "equipamento[nr_patrimonio]"

      assert_select "input#equipamento_status[name=?]", "equipamento[status]"

      assert_select "textarea#equipamento_obs[name=?]", "equipamento[obs]"

      assert_select "input#equipamento_created_by[name=?]", "equipamento[created_by]"

      assert_select "input#equipamento_updated_by[name=?]", "equipamento[updated_by]"
    end
  end
end
