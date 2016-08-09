require 'rails_helper'

RSpec.describe "componente_caracteristicas/index", type: :view do
  before(:each) do
    assign(:componente_caracteristicas, [
      ComponenteCaracteristica.create!(
        :equipamento_id => 1,
        :caracteristica_id => 2,
        :valor => "Valor",
        :unidade => "Unidade",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      ComponenteCaracteristica.create!(
        :equipamento_id => 1,
        :caracteristica_id => 2,
        :valor => "Valor",
        :unidade => "Unidade",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of componente_caracteristicas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Valor".to_s, :count => 2
    assert_select "tr>td", :text => "Unidade".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
