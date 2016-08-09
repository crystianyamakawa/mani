require 'rails_helper'

RSpec.describe "categoria_produtos/index", type: :view do
  before(:each) do
    assign(:categoria_produtos, [
      CategoriaProduto.create!(
        :nome => "Nome",
        :categoria_pai_id => 1,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      CategoriaProduto.create!(
        :nome => "Nome",
        :categoria_pai_id => 1,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of categoria_produtos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
