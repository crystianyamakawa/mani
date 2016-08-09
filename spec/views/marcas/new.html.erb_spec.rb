require 'rails_helper'

RSpec.describe "marcas/new", type: :view do
  before(:each) do
    assign(:marca, Marca.new(
      :nome => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new marca form" do
    render

    assert_select "form[action=?][method=?]", marcas_path, "post" do

      assert_select "input#marca_nome[name=?]", "marca[nome]"

      assert_select "input#marca_created_by[name=?]", "marca[created_by]"

      assert_select "input#marca_updated_by[name=?]", "marca[updated_by]"
    end
  end
end
