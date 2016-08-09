require 'rails_helper'

RSpec.describe "ordem_servicos/edit", type: :view do
  before(:each) do
    @ordem_servico = assign(:ordem_servico, OrdemServico.create!(
      :nr_protocolo => "MyString",
      :nm_contato => "MyString",
      :tp_retorno => "MyString",
      :ds_retorno => "MyString",
      :cliente_id => 1,
      :atendimento_id => 1,
      :status => "MyString",
      :responsavel => "MyString",
      :equipamento_id => 1,
      :rua => "MyString",
      :nr_endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :cep => "MyString",
      :uf => "MyString",
      :lat => "MyString",
      :long => "MyString",
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit ordem_servico form" do
    render

    assert_select "form[action=?][method=?]", ordem_servico_path(@ordem_servico), "post" do

      assert_select "input#ordem_servico_nr_protocolo[name=?]", "ordem_servico[nr_protocolo]"

      assert_select "input#ordem_servico_nm_contato[name=?]", "ordem_servico[nm_contato]"

      assert_select "input#ordem_servico_tp_retorno[name=?]", "ordem_servico[tp_retorno]"

      assert_select "input#ordem_servico_ds_retorno[name=?]", "ordem_servico[ds_retorno]"

      assert_select "input#ordem_servico_cliente_id[name=?]", "ordem_servico[cliente_id]"

      assert_select "input#ordem_servico_atendimento_id[name=?]", "ordem_servico[atendimento_id]"

      assert_select "input#ordem_servico_status[name=?]", "ordem_servico[status]"

      assert_select "input#ordem_servico_responsavel[name=?]", "ordem_servico[responsavel]"

      assert_select "input#ordem_servico_equipamento_id[name=?]", "ordem_servico[equipamento_id]"

      assert_select "input#ordem_servico_rua[name=?]", "ordem_servico[rua]"

      assert_select "input#ordem_servico_nr_endereco[name=?]", "ordem_servico[nr_endereco]"

      assert_select "input#ordem_servico_bairro[name=?]", "ordem_servico[bairro]"

      assert_select "input#ordem_servico_cidade[name=?]", "ordem_servico[cidade]"

      assert_select "input#ordem_servico_cep[name=?]", "ordem_servico[cep]"

      assert_select "input#ordem_servico_uf[name=?]", "ordem_servico[uf]"

      assert_select "input#ordem_servico_lat[name=?]", "ordem_servico[lat]"

      assert_select "input#ordem_servico_long[name=?]", "ordem_servico[long]"

      assert_select "textarea#ordem_servico_obs[name=?]", "ordem_servico[obs]"

      assert_select "input#ordem_servico_created_by[name=?]", "ordem_servico[created_by]"

      assert_select "input#ordem_servico_updated_by[name=?]", "ordem_servico[updated_by]"
    end
  end
end
