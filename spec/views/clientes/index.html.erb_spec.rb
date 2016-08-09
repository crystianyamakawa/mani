require 'rails_helper'

RSpec.describe "clientes/index", type: :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        :nome => "Nome",
        :nr_telefone => "Nr_telefone",
        :nr_telefone2 => "Nr_telefone2",
        :contato => "Contato",
        :fg_cliente => false,
        :fg_fornecedor => false,
        :tp_pessoa => "Tp_pessoa",
        :nr_cnpj_cpf => "Nr_cnpj_cpf",
        :nr_insc_estadual => "Nr_insc_estadual",
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Cliente.create!(
        :nome => "Nome",
        :nr_telefone => "Nr_telefone",
        :nr_telefone2 => "Nr_telefone2",
        :contato => "Contato",
        :fg_cliente => false,
        :fg_fornecedor => false,
        :tp_pessoa => "Tp_pessoa",
        :nr_cnpj_cpf => "Nr_cnpj_cpf",
        :nr_insc_estadual => "Nr_insc_estadual",
        :rua => "Rua",
        :nr_endereco => "Nr_endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cep => "Cep",
        :uf => "Uf",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_telefone2".to_s, :count => 2
    assert_select "tr>td", :text => "Contato".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tp_pessoa".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_cnpj_cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_insc_estadual".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
