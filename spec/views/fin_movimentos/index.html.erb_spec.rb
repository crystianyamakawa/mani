require 'rails_helper'

RSpec.describe "fin_movimentos/index", type: :view do
  before(:each) do
    assign(:fin_movimentos, [
      FinMovimento.create!(
        :tp_movimento => "Tp_movimento",
        :descricao => "Descricao",
        :valor => 1.5,
        :status => "Status",
        :motivo_status => "Motivo_status",
        :contrato_id => 1,
        :fin_conta_id => 2,
        :despesa_id => 3,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      FinMovimento.create!(
        :tp_movimento => "Tp_movimento",
        :descricao => "Descricao",
        :valor => 1.5,
        :status => "Status",
        :motivo_status => "Motivo_status",
        :contrato_id => 1,
        :fin_conta_id => 2,
        :despesa_id => 3,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of fin_movimentos" do
    render
    assert_select "tr>td", :text => "Tp_movimento".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Motivo_status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
