require 'rails_helper'

RSpec.describe "fin_conta/show", type: :view do
  before(:each) do
    @fin_contum = assign(:fin_contum, FinContum.create!(
      :banco => "Banco",
      :nm_banco => "Nm_banco",
      :agencia => "Agencia",
      :nm_agencia => "Nm_agencia",
      :conta => "Conta",
      :nm_titular => "Nm_titular",
      :nr_documento_titular => "Nr_documento_titular",
      :saldo => 1.5,
      :status => "Status",
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Banco/)
    expect(rendered).to match(/Nm_banco/)
    expect(rendered).to match(/Agencia/)
    expect(rendered).to match(/Nm_agencia/)
    expect(rendered).to match(/Conta/)
    expect(rendered).to match(/Nm_titular/)
    expect(rendered).to match(/Nr_documento_titular/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
