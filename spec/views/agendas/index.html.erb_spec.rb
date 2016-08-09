require 'rails_helper'

RSpec.describe "agendas/index", type: :view do
  before(:each) do
    assign(:agendas, [
      Agenda.create!(
        :nome => "Nome",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Agenda.create!(
        :nome => "Nome",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of agendas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
