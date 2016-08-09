require 'rails_helper'

RSpec.describe "fases/index", type: :view do
  before(:each) do
    assign(:fases, [
      Fase.create!(
        :nm_fase => "Nm_fase",
        :nr_sequencia => 1,
        :responsavel_id => 2,
        :pc_processo => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Fase.create!(
        :nm_fase => "Nm_fase",
        :nr_sequencia => 1,
        :responsavel_id => 2,
        :pc_processo => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of fases" do
    render
    assert_select "tr>td", :text => "Nm_fase".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
