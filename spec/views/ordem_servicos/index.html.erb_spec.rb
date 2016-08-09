require 'rails_helper'

RSpec.describe "ordem_servicos/index", type: :view do
  before(:each) do
    assign(:ordem_servicos, [
      OrdemServico.create!(
        :nr_protocolo => "Nr_protocolo",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :atendimento_id => 2,
        :status => "Status",
        :responsavel => "Responsavel",
        :equipamento_id => 3,
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :lat => "Lat",
        :long => "Long",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      OrdemServico.create!(
        :nr_protocolo => "Nr_protocolo",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :atendimento_id => 2,
        :status => "Status",
        :responsavel => "Responsavel",
        :equipamento_id => 3,
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :lat => "Lat",
        :long => "Long",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of ordem_servicos" do
    render
    assert_select "tr>td", :text => "Nr_protocolo".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_contato".to_s, :count => 2
    assert_select "tr>td", :text => "Tp_retorno".to_s, :count => 2
    assert_select "tr>td", :text => "Ds_retorno".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Responsavel".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    assert_select "tr>td", :text => "Long".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
