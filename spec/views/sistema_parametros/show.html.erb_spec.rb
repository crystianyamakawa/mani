require 'rails_helper'

RSpec.describe "sistema_parametros/show", type: :view do
  before(:each) do
    @sistema_parametro = assign(:sistema_parametro, SistemaParametro.create!(
      :nome_empresa => "Nome_empresa",
      :fg_app_locacao => false,
      :fg_app_comercial => false,
      :fg_app_crm => false,
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome_empresa/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
