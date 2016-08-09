require 'rails_helper'

RSpec.describe "lista_valors/new", type: :view do
  before(:each) do
    assign(:lista_valor, ListaValor.new(
      :nm_lista => "MyString",
      :valor => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new lista_valor form" do
    render

    assert_select "form[action=?][method=?]", lista_valors_path, "post" do

      assert_select "input#lista_valor_nm_lista[name=?]", "lista_valor[nm_lista]"

      assert_select "input#lista_valor_valor[name=?]", "lista_valor[valor]"

      assert_select "input#lista_valor_created_by[name=?]", "lista_valor[created_by]"

      assert_select "input#lista_valor_updated_by[name=?]", "lista_valor[updated_by]"
    end
  end
end
