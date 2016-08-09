require 'rails_helper'

RSpec.describe "marcas/index", type: :view do
  before(:each) do
    assign(:marcas, [
      Marca.create!(
        :nome => "Nome",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Marca.create!(
        :nome => "Nome",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of marcas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
