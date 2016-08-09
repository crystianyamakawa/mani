require 'rails_helper'

RSpec.describe "fases/show", type: :view do
  before(:each) do
    @fase = assign(:fase, Fase.create!(
      :nm_fase => "Nm_fase",
      :nr_sequencia => 1,
      :responsavel_id => 2,
      :pc_processo => 1.5,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_fase/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
