require 'rails_helper'

RSpec.describe "contratos/show", type: :view do
  before(:each) do
    @contrato = assign(:contrato, Contrato.create!(
      :descricao => "Descricao",
      :cliente_id => 1,
      :tp_evento => "Tp_evento",
      :status => "Status",
      :vl_negociado => 1.5,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Tp_evento/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
