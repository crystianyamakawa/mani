require 'rails_helper'

RSpec.describe "fin_movimentos/show", type: :view do
  before(:each) do
    @fin_movimento = assign(:fin_movimento, FinMovimento.create!(
      :tp_movimento => "Tp_movimento",
      :descricao => "Descricao",
      :valor => 1.5,
      :status => "Status",
      :motivo_status => "Motivo_status",
      :contrato_id => 1,
      :fin_conta_id => 2,
      :despesa_id => 3,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tp_movimento/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Motivo_status/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
