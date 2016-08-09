require 'rails_helper'

RSpec.describe "agendas/show", type: :view do
  before(:each) do
    @agenda = assign(:agenda, Agenda.create!(
      :nome => "Nome",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
