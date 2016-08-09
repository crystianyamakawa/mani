require 'rails_helper'

RSpec.describe "lista_valors/show", type: :view do
  before(:each) do
    @lista_valor = assign(:lista_valor, ListaValor.create!(
      :nm_lista => "Nm_lista",
      :valor => "Valor",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_lista/)
    expect(rendered).to match(/Valor/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
