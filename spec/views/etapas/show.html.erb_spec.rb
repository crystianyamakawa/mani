require 'rails_helper'

RSpec.describe "etapas/show", type: :view do
  before(:each) do
    @etapa = assign(:etapa, Etapa.create!(
      :fase_id => 1,
      :nm_etapa => "Nm_etapa",
      :nr_sequencia => 2,
      :responsavel_id => 3,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nm_etapa/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
