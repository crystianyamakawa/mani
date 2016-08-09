require 'rails_helper'

RSpec.describe "oferta/index", type: :view do
  before(:each) do
    assign(:oferta, [
      Ofertum.create!(
        :nm_oferta => "Nm_oferta",
        :campanha_id => 1,
        :vl_oferta => 1.5,
        :vl_desconto => 1.5,
        :pc_desconto => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Ofertum.create!(
        :nm_oferta => "Nm_oferta",
        :campanha_id => 1,
        :vl_oferta => 1.5,
        :vl_desconto => 1.5,
        :pc_desconto => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of oferta" do
    render
    assert_select "tr>td", :text => "Nm_oferta".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
