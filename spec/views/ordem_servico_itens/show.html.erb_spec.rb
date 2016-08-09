require 'rails_helper'

RSpec.describe "ordem_servico_itens/show", type: :view do
  before(:each) do
    @ordem_servico_iten = assign(:ordem_servico_iten, OrdemServicoIten.create!(
      :ordemservico_id => 1,
      :servico_id => 2,
      :fornecedor_id => 3,
      :status => "Status",
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
