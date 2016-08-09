require 'rails_helper'

RSpec.describe "contratos/index", type: :view do
  before(:each) do
    assign(:contratos, [
      Contrato.create!(
        :descricao => "Descricao",
        :cliente_id => 1,
        :tp_evento => "Tp_evento",
        :status => "Status",
        :vl_negociado => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Contrato.create!(
        :descricao => "Descricao",
        :cliente_id => 1,
        :tp_evento => "Tp_evento",
        :status => "Status",
        :vl_negociado => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of contratos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Tp_evento".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
