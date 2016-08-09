require 'rails_helper'

RSpec.describe "caracteristicas/edit", type: :view do
  before(:each) do
    @caracteristica = assign(:caracteristica, Caracteristica.create!(
      :codigo => "MyString",
      :descricao => "MyString",
      :unidade => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit caracteristica form" do
    render

    assert_select "form[action=?][method=?]", caracteristica_path(@caracteristica), "post" do

      assert_select "input#caracteristica_codigo[name=?]", "caracteristica[codigo]"

      assert_select "input#caracteristica_descricao[name=?]", "caracteristica[descricao]"

      assert_select "input#caracteristica_unidade[name=?]", "caracteristica[unidade]"

      assert_select "input#caracteristica_created_by[name=?]", "caracteristica[created_by]"

      assert_select "input#caracteristica_updated_by[name=?]", "caracteristica[updated_by]"
    end
  end
end
