require 'rails_helper'

RSpec.describe "fases/new", type: :view do
  before(:each) do
    assign(:fase, Fase.new(
      :nm_fase => "MyString",
      :nr_sequencia => 1,
      :responsavel_id => 1,
      :pc_processo => 1.5,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new fase form" do
    render

    assert_select "form[action=?][method=?]", fases_path, "post" do

      assert_select "input#fase_nm_fase[name=?]", "fase[nm_fase]"

      assert_select "input#fase_nr_sequencia[name=?]", "fase[nr_sequencia]"

      assert_select "input#fase_responsavel_id[name=?]", "fase[responsavel_id]"

      assert_select "input#fase_pc_processo[name=?]", "fase[pc_processo]"

      assert_select "textarea#fase_obs[name=?]", "fase[obs]"

      assert_select "input#fase_created_by[name=?]", "fase[created_by]"

      assert_select "input#fase_updated_by[name=?]", "fase[updated_by]"
    end
  end
end
