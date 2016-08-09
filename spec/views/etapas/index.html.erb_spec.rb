require 'rails_helper'

RSpec.describe "etapas/index", type: :view do
  before(:each) do
    assign(:etapas, [
      Etapa.create!(
        :fase_id => 1,
        :nm_etapa => "Nm_etapa",
        :nr_sequencia => 2,
        :responsavel_id => 3,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Etapa.create!(
        :fase_id => 1,
        :nm_etapa => "Nm_etapa",
        :nr_sequencia => 2,
        :responsavel_id => 3,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of etapas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nm_etapa".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
