require 'rails_helper'

RSpec.describe "atendimentos/index", type: :view do
  before(:each) do
    assign(:atendimentos, [
      Atendimento.create!(
        :nr_protocolo => "Nr_protocolo",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :atendimento_id => 2,
        :motivo_id => 3,
        :submotivo_id => 4,
        :status => "Status",
        :equipamento_id => 5,
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :lat => "Lat",
        :long => "Long",
        :resolucao_id => 6,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Atendimento.create!(
        :nr_protocolo => "Nr_protocolo",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :atendimento_id => 2,
        :motivo_id => 3,
        :submotivo_id => 4,
        :status => "Status",
        :equipamento_id => 5,
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :lat => "Lat",
        :long => "Long",
        :resolucao_id => 6,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of atendimentos" do
    render
    assert_select "tr>td", :text => "Nr_protocolo".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_contato".to_s, :count => 2
    assert_select "tr>td", :text => "Tp_retorno".to_s, :count => 2
    assert_select "tr>td", :text => "Ds_retorno".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    assert_select "tr>td", :text => "Long".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
