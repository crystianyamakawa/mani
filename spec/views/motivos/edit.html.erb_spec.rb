require 'rails_helper'

RSpec.describe "motivos/edit", type: :view do
  before(:each) do
    @motivo = assign(:motivo, Motivo.create!(
      :descricao => "MyString",
      :motivo_id => 1,
      :setor_1 => "MyString",
      :prazo_1 => 1,
      :setor_2 => "MyString",
      :prazo_2 => 1,
      :setor_3 => "MyString",
      :prazo_3 => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit motivo form" do
    render

    assert_select "form[action=?][method=?]", motivo_path(@motivo), "post" do

      assert_select "input#motivo_descricao[name=?]", "motivo[descricao]"

      assert_select "input#motivo_motivo_id[name=?]", "motivo[motivo_id]"

      assert_select "input#motivo_setor_1[name=?]", "motivo[setor_1]"

      assert_select "input#motivo_prazo_1[name=?]", "motivo[prazo_1]"

      assert_select "input#motivo_setor_2[name=?]", "motivo[setor_2]"

      assert_select "input#motivo_prazo_2[name=?]", "motivo[prazo_2]"

      assert_select "input#motivo_setor_3[name=?]", "motivo[setor_3]"

      assert_select "input#motivo_prazo_3[name=?]", "motivo[prazo_3]"

      assert_select "textarea#motivo_obs[name=?]", "motivo[obs]"

      assert_select "input#motivo_created_by[name=?]", "motivo[created_by]"

      assert_select "input#motivo_updated_by[name=?]", "motivo[updated_by]"
    end
  end
end
