require 'rails_helper'

RSpec.describe "caracteristicas/index", type: :view do
  before(:each) do
    assign(:caracteristicas, [
      Caracteristica.create!(
        :codigo => "Codigo",
        :descricao => "Descricao",
        :unidade => "Unidade",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Caracteristica.create!(
        :codigo => "Codigo",
        :descricao => "Descricao",
        :unidade => "Unidade",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of caracteristicas" do
    render
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Unidade".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
