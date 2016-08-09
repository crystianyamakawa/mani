require 'rails_helper'

RSpec.describe "componente_caracteristicas/edit", type: :view do
  before(:each) do
    @componente_caracteristica = assign(:componente_caracteristica, ComponenteCaracteristica.create!(
      :equipamento_id => 1,
      :caracteristica_id => 1,
      :valor => "MyString",
      :unidade => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit componente_caracteristica form" do
    render

    assert_select "form[action=?][method=?]", componente_caracteristica_path(@componente_caracteristica), "post" do

      assert_select "input#componente_caracteristica_equipamento_id[name=?]", "componente_caracteristica[equipamento_id]"

      assert_select "input#componente_caracteristica_caracteristica_id[name=?]", "componente_caracteristica[caracteristica_id]"

      assert_select "input#componente_caracteristica_valor[name=?]", "componente_caracteristica[valor]"

      assert_select "input#componente_caracteristica_unidade[name=?]", "componente_caracteristica[unidade]"

      assert_select "input#componente_caracteristica_created_by[name=?]", "componente_caracteristica[created_by]"

      assert_select "input#componente_caracteristica_updated_by[name=?]", "componente_caracteristica[updated_by]"
    end
  end
end
