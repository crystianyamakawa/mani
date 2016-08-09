require 'rails_helper'

RSpec.describe "oferta/new", type: :view do
  before(:each) do
    assign(:ofertum, Ofertum.new(
      :nm_oferta => "MyString",
      :campanha_id => 1,
      :vl_oferta => 1.5,
      :vl_desconto => 1.5,
      :pc_desconto => 1.5,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new ofertum form" do
    render

    assert_select "form[action=?][method=?]", oferta_path, "post" do

      assert_select "input#ofertum_nm_oferta[name=?]", "ofertum[nm_oferta]"

      assert_select "input#ofertum_campanha_id[name=?]", "ofertum[campanha_id]"

      assert_select "input#ofertum_vl_oferta[name=?]", "ofertum[vl_oferta]"

      assert_select "input#ofertum_vl_desconto[name=?]", "ofertum[vl_desconto]"

      assert_select "input#ofertum_pc_desconto[name=?]", "ofertum[pc_desconto]"

      assert_select "textarea#ofertum_obs[name=?]", "ofertum[obs]"

      assert_select "input#ofertum_created_by[name=?]", "ofertum[created_by]"

      assert_select "input#ofertum_updated_by[name=?]", "ofertum[updated_by]"
    end
  end
end
