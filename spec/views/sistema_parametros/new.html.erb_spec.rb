require 'rails_helper'

RSpec.describe "sistema_parametros/new", type: :view do
  before(:each) do
    assign(:sistema_parametro, SistemaParametro.new(
      :nome_empresa => "MyString",
      :fg_app_locacao => false,
      :fg_app_comercial => false,
      :fg_app_crm => false,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new sistema_parametro form" do
    render

    assert_select "form[action=?][method=?]", sistema_parametros_path, "post" do

      assert_select "input#sistema_parametro_nome_empresa[name=?]", "sistema_parametro[nome_empresa]"

      assert_select "input#sistema_parametro_fg_app_locacao[name=?]", "sistema_parametro[fg_app_locacao]"

      assert_select "input#sistema_parametro_fg_app_comercial[name=?]", "sistema_parametro[fg_app_comercial]"

      assert_select "input#sistema_parametro_fg_app_crm[name=?]", "sistema_parametro[fg_app_crm]"

      assert_select "input#sistema_parametro_created_by[name=?]", "sistema_parametro[created_by]"

      assert_select "input#sistema_parametro_updated_by[name=?]", "sistema_parametro[updated_by]"
    end
  end
end
