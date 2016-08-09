require 'rails_helper'

RSpec.describe "ofer_produtos/index", type: :view do
  before(:each) do
    assign(:ofer_produtos, [
      OferProduto.create!(
        :oferta_id => 1,
        :produto_id => 2,
        :vl_oferta => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      OferProduto.create!(
        :oferta_id => 1,
        :produto_id => 2,
        :vl_oferta => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of ofer_produtos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
