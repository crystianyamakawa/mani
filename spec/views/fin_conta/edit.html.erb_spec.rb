require 'rails_helper'

RSpec.describe "fin_conta/edit", type: :view do
  before(:each) do
    @fin_contum = assign(:fin_contum, FinContum.create!(
      :banco => "MyString",
      :nm_banco => "MyString",
      :agencia => "MyString",
      :nm_agencia => "MyString",
      :conta => "MyString",
      :nm_titular => "MyString",
      :nr_documento_titular => "MyString",
      :saldo => 1.5,
      :status => "MyString",
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit fin_contum form" do
    render

    assert_select "form[action=?][method=?]", fin_contum_path(@fin_contum), "post" do

      assert_select "input#fin_contum_banco[name=?]", "fin_contum[banco]"

      assert_select "input#fin_contum_nm_banco[name=?]", "fin_contum[nm_banco]"

      assert_select "input#fin_contum_agencia[name=?]", "fin_contum[agencia]"

      assert_select "input#fin_contum_nm_agencia[name=?]", "fin_contum[nm_agencia]"

      assert_select "input#fin_contum_conta[name=?]", "fin_contum[conta]"

      assert_select "input#fin_contum_nm_titular[name=?]", "fin_contum[nm_titular]"

      assert_select "input#fin_contum_nr_documento_titular[name=?]", "fin_contum[nr_documento_titular]"

      assert_select "input#fin_contum_saldo[name=?]", "fin_contum[saldo]"

      assert_select "input#fin_contum_status[name=?]", "fin_contum[status]"

      assert_select "textarea#fin_contum_obs[name=?]", "fin_contum[obs]"

      assert_select "input#fin_contum_created_by[name=?]", "fin_contum[created_by]"

      assert_select "input#fin_contum_updated_by[name=?]", "fin_contum[updated_by]"
    end
  end
end
