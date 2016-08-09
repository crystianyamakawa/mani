require 'rails_helper'

RSpec.describe "processo_vendas/index", type: :view do
  before(:each) do
    assign(:processo_vendas, [
      ProcessoVenda.create!(
        :nm_processo => "Nm_processo",
        :responsavel_id => 1,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      ProcessoVenda.create!(
        :nm_processo => "Nm_processo",
        :responsavel_id => 1,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of processo_vendas" do
    render
    assert_select "tr>td", :text => "Nm_processo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
