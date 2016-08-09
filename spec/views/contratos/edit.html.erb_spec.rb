require 'rails_helper'

RSpec.describe "contratos/edit", type: :view do
  before(:each) do
    @contrato = assign(:contrato, Contrato.create!(
      :descricao => "MyString",
      :cliente_id => 1,
      :tp_evento => "MyString",
      :status => "MyString",
      :vl_negociado => 1.5,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit contrato form" do
    render

    assert_select "form[action=?][method=?]", contrato_path(@contrato), "post" do

      assert_select "input#contrato_descricao[name=?]", "contrato[descricao]"

      assert_select "input#contrato_cliente_id[name=?]", "contrato[cliente_id]"

      assert_select "input#contrato_tp_evento[name=?]", "contrato[tp_evento]"

      assert_select "input#contrato_status[name=?]", "contrato[status]"

      assert_select "input#contrato_vl_negociado[name=?]", "contrato[vl_negociado]"

      assert_select "textarea#contrato_obs[name=?]", "contrato[obs]"

      assert_select "input#contrato_created_by[name=?]", "contrato[created_by]"

      assert_select "input#contrato_updated_by[name=?]", "contrato[updated_by]"
    end
  end
end
