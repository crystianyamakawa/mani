require 'rails_helper'

RSpec.describe "despesas/show", type: :view do
  before(:each) do
    @despesa = assign(:despesa, Despesa.create!(
      :nome => "Nome",
      :fornecedor_id => 1,
      :vl_despesa => 1.5,
      :status => "Status",
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
