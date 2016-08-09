require 'rails_helper'

RSpec.describe "processo_vendas/show", type: :view do
  before(:each) do
    @processo_venda = assign(:processo_venda, ProcessoVenda.create!(
      :nm_processo => "Nm_processo",
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_processo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
