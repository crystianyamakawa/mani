require 'rails_helper'

RSpec.describe "estoques/index", type: :view do
  before(:each) do
    assign(:estoques, [
      Estoque.create!(
        :nome => "Nome",
        :tipo => "Tipo",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Estoque.create!(
        :nome => "Nome",
        :tipo => "Tipo",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of estoques" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
