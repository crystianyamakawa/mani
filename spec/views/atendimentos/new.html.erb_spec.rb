require 'rails_helper'

RSpec.describe "atendimentos/new", type: :view do
  before(:each) do
    assign(:atendimento, Atendimento.new(
      :nr_protocolo => "MyString",
      :nm_contato => "MyString",
      :tp_retorno => "MyString",
      :ds_retorno => "MyString",
      :cliente_id => 1,
      :atendimento_id => 1,
      :motivo_id => 1,
      :submotivo_id => 1,
      :status => "MyString",
      :equipamento_id => 1,
      :rua => "MyString",
      :nr_endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :cep => "MyString",
      :uf => "MyString",
      :lat => "MyString",
      :long => "MyString",
      :resolucao_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new atendimento form" do
    render

    assert_select "form[action=?][method=?]", atendimentos_path, "post" do

      assert_select "input#atendimento_nr_protocolo[name=?]", "atendimento[nr_protocolo]"

      assert_select "input#atendimento_nm_contato[name=?]", "atendimento[nm_contato]"

      assert_select "input#atendimento_tp_retorno[name=?]", "atendimento[tp_retorno]"

      assert_select "input#atendimento_ds_retorno[name=?]", "atendimento[ds_retorno]"

      assert_select "input#atendimento_cliente_id[name=?]", "atendimento[cliente_id]"

      assert_select "input#atendimento_atendimento_id[name=?]", "atendimento[atendimento_id]"

      assert_select "input#atendimento_motivo_id[name=?]", "atendimento[motivo_id]"

      assert_select "input#atendimento_submotivo_id[name=?]", "atendimento[submotivo_id]"

      assert_select "input#atendimento_status[name=?]", "atendimento[status]"

      assert_select "input#atendimento_equipamento_id[name=?]", "atendimento[equipamento_id]"

      assert_select "input#atendimento_rua[name=?]", "atendimento[rua]"

      assert_select "input#atendimento_nr_endereco[name=?]", "atendimento[nr_endereco]"

      assert_select "input#atendimento_bairro[name=?]", "atendimento[bairro]"

      assert_select "input#atendimento_cidade[name=?]", "atendimento[cidade]"

      assert_select "input#atendimento_cep[name=?]", "atendimento[cep]"

      assert_select "input#atendimento_uf[name=?]", "atendimento[uf]"

      assert_select "input#atendimento_lat[name=?]", "atendimento[lat]"

      assert_select "input#atendimento_long[name=?]", "atendimento[long]"

      assert_select "input#atendimento_resolucao_id[name=?]", "atendimento[resolucao_id]"

      assert_select "textarea#atendimento_obs[name=?]", "atendimento[obs]"

      assert_select "input#atendimento_created_by[name=?]", "atendimento[created_by]"

      assert_select "input#atendimento_updated_by[name=?]", "atendimento[updated_by]"
    end
  end
end
