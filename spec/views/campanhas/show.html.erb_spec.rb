require 'rails_helper'

RSpec.describe "campanhas/show", type: :view do
  before(:each) do
    @campanha = assign(:campanha, Campanha.create!(
      :nm_campanha => "Nm_campanha",
      :vl_meta => 1.5,
      :vl_atingido => 1.5,
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_campanha/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
