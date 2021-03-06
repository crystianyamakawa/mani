require 'rails_helper'

RSpec.describe "resolucaos/index", type: :view do
  before(:each) do
    assign(:resolucaos, [
      Resolucao.create!(
        :descricao => "Descricao",
        :status_final => "Status_final",
        :obs_resolucao => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Resolucao.create!(
        :descricao => "Descricao",
        :status_final => "Status_final",
        :obs_resolucao => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of resolucaos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Status_final".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
