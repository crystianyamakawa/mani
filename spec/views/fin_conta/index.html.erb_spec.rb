require 'rails_helper'

RSpec.describe "fin_conta/index", type: :view do
  before(:each) do
    assign(:fin_conta, [
      FinContum.create!(
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
      ),
      FinContum.create!(
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
      )
    ])
  end

  it "renders a list of fin_conta" do
    render
    assert_select "tr>td", :text => "Banco".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_banco".to_s, :count => 2
    assert_select "tr>td", :text => "Agencia".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_agencia".to_s, :count => 2
    assert_select "tr>td", :text => "Conta".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_titular".to_s, :count => 2
    assert_select "tr>td", :text => "Nr_documento_titular".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
