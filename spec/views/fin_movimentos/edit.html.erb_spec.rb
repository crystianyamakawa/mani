require 'rails_helper'

RSpec.describe "fin_movimentos/edit", type: :view do
  before(:each) do
    @fin_movimento = assign(:fin_movimento, FinMovimento.create!(
      :tp_movimento => "MyString",
      :descricao => "MyString",
      :valor => 1.5,
      :status => "MyString",
      :motivo_status => "MyString",
      :contrato_id => 1,
      :fin_conta_id => 1,
      :despesa_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit fin_movimento form" do
    render

    assert_select "form[action=?][method=?]", fin_movimento_path(@fin_movimento), "post" do

      assert_select "input#fin_movimento_tp_movimento[name=?]", "fin_movimento[tp_movimento]"

      assert_select "input#fin_movimento_descricao[name=?]", "fin_movimento[descricao]"

      assert_select "input#fin_movimento_valor[name=?]", "fin_movimento[valor]"

      assert_select "input#fin_movimento_status[name=?]", "fin_movimento[status]"

      assert_select "input#fin_movimento_motivo_status[name=?]", "fin_movimento[motivo_status]"

      assert_select "input#fin_movimento_contrato_id[name=?]", "fin_movimento[contrato_id]"

      assert_select "input#fin_movimento_fin_conta_id[name=?]", "fin_movimento[fin_conta_id]"

      assert_select "input#fin_movimento_despesa_id[name=?]", "fin_movimento[despesa_id]"

      assert_select "textarea#fin_movimento_obs[name=?]", "fin_movimento[obs]"

      assert_select "input#fin_movimento_created_by[name=?]", "fin_movimento[created_by]"

      assert_select "input#fin_movimento_updated_by[name=?]", "fin_movimento[updated_by]"
    end
  end
end
