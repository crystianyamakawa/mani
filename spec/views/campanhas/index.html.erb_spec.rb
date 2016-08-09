require 'rails_helper'

RSpec.describe "campanhas/index", type: :view do
  before(:each) do
    assign(:campanhas, [
      Campanha.create!(
        :nm_campanha => "Nm_campanha",
        :vl_meta => 1.5,
        :vl_atingido => 1.5,
        :responsavel_id => 1,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Campanha.create!(
        :nm_campanha => "Nm_campanha",
        :vl_meta => 1.5,
        :vl_atingido => 1.5,
        :responsavel_id => 1,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of campanhas" do
    render
    assert_select "tr>td", :text => "Nm_campanha".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
