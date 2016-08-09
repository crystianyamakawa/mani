require 'rails_helper'

RSpec.describe "oportunidades/edit", type: :view do
  before(:each) do
    @oportunidade = assign(:oportunidade, Oportunidade.create!(
      :nm_contato => "MyString",
      :tp_retorno => "MyString",
      :ds_retorno => "MyString",
      :cliente_id => 1,
      :processo_venda_id => 1,
      :campanha_id => 1,
      :oferta_id => 1,
      :fase_id => 1,
      :etapa_id => 1,
      :situacao_etapa => 1,
      :status => "MyString",
      :resultado => "MyString",
      :motivo_resultado_id => 1,
      :pc_evolucao => 1.5,
      :pc_sucesso => 1.5,
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit oportunidade form" do
    render

    assert_select "form[action=?][method=?]", oportunidade_path(@oportunidade), "post" do

      assert_select "input#oportunidade_nm_contato[name=?]", "oportunidade[nm_contato]"

      assert_select "input#oportunidade_tp_retorno[name=?]", "oportunidade[tp_retorno]"

      assert_select "input#oportunidade_ds_retorno[name=?]", "oportunidade[ds_retorno]"

      assert_select "input#oportunidade_cliente_id[name=?]", "oportunidade[cliente_id]"

      assert_select "input#oportunidade_processo_venda_id[name=?]", "oportunidade[processo_venda_id]"

      assert_select "input#oportunidade_campanha_id[name=?]", "oportunidade[campanha_id]"

      assert_select "input#oportunidade_oferta_id[name=?]", "oportunidade[oferta_id]"

      assert_select "input#oportunidade_fase_id[name=?]", "oportunidade[fase_id]"

      assert_select "input#oportunidade_etapa_id[name=?]", "oportunidade[etapa_id]"

      assert_select "input#oportunidade_situacao_etapa[name=?]", "oportunidade[situacao_etapa]"

      assert_select "input#oportunidade_status[name=?]", "oportunidade[status]"

      assert_select "input#oportunidade_resultado[name=?]", "oportunidade[resultado]"

      assert_select "input#oportunidade_motivo_resultado_id[name=?]", "oportunidade[motivo_resultado_id]"

      assert_select "input#oportunidade_pc_evolucao[name=?]", "oportunidade[pc_evolucao]"

      assert_select "input#oportunidade_pc_sucesso[name=?]", "oportunidade[pc_sucesso]"

      assert_select "input#oportunidade_responsavel_id[name=?]", "oportunidade[responsavel_id]"

      assert_select "textarea#oportunidade_obs[name=?]", "oportunidade[obs]"

      assert_select "input#oportunidade_created_by[name=?]", "oportunidade[created_by]"

      assert_select "input#oportunidade_updated_by[name=?]", "oportunidade[updated_by]"
    end
  end
end
