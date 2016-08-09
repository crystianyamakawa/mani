require 'rails_helper'

RSpec.describe "interessados/new", type: :view do
  before(:each) do
    assign(:interessado, Interessado.new(
      :objeto_id => 1,
      :objeto_type => "MyString",
      :nm_contato => "MyString",
      :tp_retorno => "MyString",
      :ds_retorno => "MyString",
      :interessado_id => 1,
      :papel => "MyString",
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new interessado form" do
    render

    assert_select "form[action=?][method=?]", interessados_path, "post" do

      assert_select "input#interessado_objeto_id[name=?]", "interessado[objeto_id]"

      assert_select "input#interessado_objeto_type[name=?]", "interessado[objeto_type]"

      assert_select "input#interessado_nm_contato[name=?]", "interessado[nm_contato]"

      assert_select "input#interessado_tp_retorno[name=?]", "interessado[tp_retorno]"

      assert_select "input#interessado_ds_retorno[name=?]", "interessado[ds_retorno]"

      assert_select "input#interessado_interessado_id[name=?]", "interessado[interessado_id]"

      assert_select "input#interessado_papel[name=?]", "interessado[papel]"

      assert_select "textarea#interessado_obs[name=?]", "interessado[obs]"

      assert_select "input#interessado_created_by[name=?]", "interessado[created_by]"

      assert_select "input#interessado_updated_by[name=?]", "interessado[updated_by]"
    end
  end
end
