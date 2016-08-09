require 'rails_helper'

RSpec.describe "servicos/show", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :descricao => "Descricao",
      :procedimento => "MyText",
      :prazo => 1,
      :vl_custo => 1.5,
      :vl_cobranca => 1.5,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
