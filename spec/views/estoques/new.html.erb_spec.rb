require 'rails_helper'

RSpec.describe "estoques/new", type: :view do
  before(:each) do
    assign(:estoque, Estoque.new(
      :nome => "MyString",
      :tipo => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new estoque form" do
    render

    assert_select "form[action=?][method=?]", estoques_path, "post" do

      assert_select "input#estoque_nome[name=?]", "estoque[nome]"

      assert_select "input#estoque_tipo[name=?]", "estoque[tipo]"

      assert_select "input#estoque_created_by[name=?]", "estoque[created_by]"

      assert_select "input#estoque_updated_by[name=?]", "estoque[updated_by]"
    end
  end
end
