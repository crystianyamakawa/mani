require 'rails_helper'

RSpec.describe "campanhas/new", type: :view do
  before(:each) do
    assign(:campanha, Campanha.new(
      :nm_campanha => "MyString",
      :vl_meta => 1.5,
      :vl_atingido => 1.5,
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new campanha form" do
    render

    assert_select "form[action=?][method=?]", campanhas_path, "post" do

      assert_select "input#campanha_nm_campanha[name=?]", "campanha[nm_campanha]"

      assert_select "input#campanha_vl_meta[name=?]", "campanha[vl_meta]"

      assert_select "input#campanha_vl_atingido[name=?]", "campanha[vl_atingido]"

      assert_select "input#campanha_responsavel_id[name=?]", "campanha[responsavel_id]"

      assert_select "textarea#campanha_obs[name=?]", "campanha[obs]"

      assert_select "input#campanha_created_by[name=?]", "campanha[created_by]"

      assert_select "input#campanha_updated_by[name=?]", "campanha[updated_by]"
    end
  end
end
