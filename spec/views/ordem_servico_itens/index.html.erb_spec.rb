require 'rails_helper'

RSpec.describe "ordem_servico_itens/index", type: :view do
  before(:each) do
    assign(:ordem_servico_itens, [
      OrdemServicoIten.create!(
        :ordemservico_id => 1,
        :servico_id => 2,
        :fornecedor_id => 3,
        :status => "Status",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      OrdemServicoIten.create!(
        :ordemservico_id => 1,
        :servico_id => 2,
        :fornecedor_id => 3,
        :status => "Status",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of ordem_servico_itens" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
