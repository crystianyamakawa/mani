require 'rails_helper'

RSpec.describe "sistema_parametros/index", type: :view do
  before(:each) do
    assign(:sistema_parametros, [
      SistemaParametro.create!(
        :nome_empresa => "Nome_empresa",
        :fg_app_locacao => false,
        :fg_app_comercial => false,
        :fg_app_crm => false,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      SistemaParametro.create!(
        :nome_empresa => "Nome_empresa",
        :fg_app_locacao => false,
        :fg_app_comercial => false,
        :fg_app_crm => false,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of sistema_parametros" do
    render
    assert_select "tr>td", :text => "Nome_empresa".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
