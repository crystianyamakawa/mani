require 'rails_helper'

RSpec.describe "ofer_produtos/edit", type: :view do
  before(:each) do
    @ofer_produto = assign(:ofer_produto, OferProduto.create!(
      :oferta_id => 1,
      :produto_id => 1,
      :vl_oferta => 1.5,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit ofer_produto form" do
    render

    assert_select "form[action=?][method=?]", ofer_produto_path(@ofer_produto), "post" do

      assert_select "input#ofer_produto_oferta_id[name=?]", "ofer_produto[oferta_id]"

      assert_select "input#ofer_produto_produto_id[name=?]", "ofer_produto[produto_id]"

      assert_select "input#ofer_produto_vl_oferta[name=?]", "ofer_produto[vl_oferta]"

      assert_select "textarea#ofer_produto_obs[name=?]", "ofer_produto[obs]"

      assert_select "input#ofer_produto_created_by[name=?]", "ofer_produto[created_by]"

      assert_select "input#ofer_produto_updated_by[name=?]", "ofer_produto[updated_by]"
    end
  end
end
