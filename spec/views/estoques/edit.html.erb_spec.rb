require 'rails_helper'

RSpec.describe "estoques/edit", type: :view do
  before(:each) do
    @estoque = assign(:estoque, Estoque.create!(
      :nome => "MyString",
      :tipo => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit estoque form" do
    render

    assert_select "form[action=?][method=?]", estoque_path(@estoque), "post" do

      assert_select "input#estoque_nome[name=?]", "estoque[nome]"

      assert_select "input#estoque_tipo[name=?]", "estoque[tipo]"

      assert_select "input#estoque_created_by[name=?]", "estoque[created_by]"

      assert_select "input#estoque_updated_by[name=?]", "estoque[updated_by]"
    end
  end
end
