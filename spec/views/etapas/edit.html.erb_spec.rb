require 'rails_helper'

RSpec.describe "etapas/edit", type: :view do
  before(:each) do
    @etapa = assign(:etapa, Etapa.create!(
      :fase_id => 1,
      :nm_etapa => "MyString",
      :nr_sequencia => 1,
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit etapa form" do
    render

    assert_select "form[action=?][method=?]", etapa_path(@etapa), "post" do

      assert_select "input#etapa_fase_id[name=?]", "etapa[fase_id]"

      assert_select "input#etapa_nm_etapa[name=?]", "etapa[nm_etapa]"

      assert_select "input#etapa_nr_sequencia[name=?]", "etapa[nr_sequencia]"

      assert_select "input#etapa_responsavel_id[name=?]", "etapa[responsavel_id]"

      assert_select "textarea#etapa_obs[name=?]", "etapa[obs]"

      assert_select "input#etapa_created_by[name=?]", "etapa[created_by]"

      assert_select "input#etapa_updated_by[name=?]", "etapa[updated_by]"
    end
  end
end
