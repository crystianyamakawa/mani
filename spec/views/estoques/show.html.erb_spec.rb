require 'rails_helper'

RSpec.describe "estoques/show", type: :view do
  before(:each) do
    @estoque = assign(:estoque, Estoque.create!(
      :nome => "Nome",
      :tipo => "Tipo",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
