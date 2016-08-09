require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Nr_telefone/)
    expect(rendered).to match(/Nr_telefone2/)
    expect(rendered).to match(/Contato/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Tp_pessoa/)
    expect(rendered).to match(/Nr_cnpj_cpf/)
    expect(rendered).to match(/Nr_insc_estadual/)
    expect(rendered).to match(/Rua/)
    expect(rendered).to match(/Nr_endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
