require 'rails_helper'

RSpec.describe "contrato_equipamentos/new", type: :view do
  before(:each) do
    assign(:contrato_equipamento, ContratoEquipamento.new(
      :contrato_id => 1,
      :equipamento_id => 1,
      :quantidade => 1,
      :vl_tabela => 1.5,
      :vl_negociado => 1.5,
      :vl_locacao => 1.5,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new contrato_equipamento form" do
    render

    assert_select "form[action=?][method=?]", contrato_equipamentos_path, "post" do

      assert_select "input#contrato_equipamento_contrato_id[name=?]", "contrato_equipamento[contrato_id]"

      assert_select "input#contrato_equipamento_equipamento_id[name=?]", "contrato_equipamento[equipamento_id]"

      assert_select "input#contrato_equipamento_quantidade[name=?]", "contrato_equipamento[quantidade]"

      assert_select "input#contrato_equipamento_vl_tabela[name=?]", "contrato_equipamento[vl_tabela]"

      assert_select "input#contrato_equipamento_vl_negociado[name=?]", "contrato_equipamento[vl_negociado]"

      assert_select "input#contrato_equipamento_vl_locacao[name=?]", "contrato_equipamento[vl_locacao]"

      assert_select "input#contrato_equipamento_created_by[name=?]", "contrato_equipamento[created_by]"

      assert_select "input#contrato_equipamento_updated_by[name=?]", "contrato_equipamento[updated_by]"
    end
  end
end
