require 'rails_helper'

RSpec.describe "resolucaos/show", type: :view do
  before(:each) do
    @resolucao = assign(:resolucao, Resolucao.create!(
      :descricao => "Descricao",
      :status_final => "Status_final",
      :obs_resolucao => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Status_final/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
