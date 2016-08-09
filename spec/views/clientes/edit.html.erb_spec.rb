require 'rails_helper'

RSpec.describe "clientes/edit", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "MyString",
      :nr_telefone => "MyString",
      :nr_telefone2 => "MyString",
      :contato => "MyString",
      :fg_cliente => false,
      :fg_fornecedor => false,
      :tp_pessoa => "MyString",
      :nr_cnpj_cpf => "MyString",
      :nr_insc_estadual => "MyString",
      :rua => "MyString",
      :nr_endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :cep => "MyString",
      :uf => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do

      assert_select "input#cliente_nome[name=?]", "cliente[nome]"

      assert_select "input#cliente_nr_telefone[name=?]", "cliente[nr_telefone]"

      assert_select "input#cliente_nr_telefone2[name=?]", "cliente[nr_telefone2]"

      assert_select "input#cliente_contato[name=?]", "cliente[contato]"

      assert_select "input#cliente_fg_cliente[name=?]", "cliente[fg_cliente]"

      assert_select "input#cliente_fg_fornecedor[name=?]", "cliente[fg_fornecedor]"

      assert_select "input#cliente_tp_pessoa[name=?]", "cliente[tp_pessoa]"

      assert_select "input#cliente_nr_cnpj_cpf[name=?]", "cliente[nr_cnpj_cpf]"

      assert_select "input#cliente_nr_insc_estadual[name=?]", "cliente[nr_insc_estadual]"

      assert_select "input#cliente_rua[name=?]", "cliente[rua]"

      assert_select "input#cliente_nr_endereco[name=?]", "cliente[nr_endereco]"

      assert_select "input#cliente_bairro[name=?]", "cliente[bairro]"

      assert_select "input#cliente_cidade[name=?]", "cliente[cidade]"

      assert_select "input#cliente_cep[name=?]", "cliente[cep]"

      assert_select "input#cliente_uf[name=?]", "cliente[uf]"

      assert_select "input#cliente_created_by[name=?]", "cliente[created_by]"

      assert_select "input#cliente_updated_by[name=?]", "cliente[updated_by]"
    end
  end
end
