require 'rails_helper'

RSpec.describe "lista_valors/index", type: :view do
  before(:each) do
    assign(:lista_valors, [
      ListaValor.create!(
        :nm_lista => "Nm_lista",
        :valor => "Valor",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      ListaValor.create!(
        :nm_lista => "Nm_lista",
        :valor => "Valor",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of lista_valors" do
    render
    assert_select "tr>td", :text => "Nm_lista".to_s, :count => 2
    assert_select "tr>td", :text => "Valor".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
