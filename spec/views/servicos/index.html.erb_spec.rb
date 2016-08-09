require 'rails_helper'

RSpec.describe "servicos/index", type: :view do
  before(:each) do
    assign(:servicos, [
      Servico.create!(
        :descricao => "Descricao",
        :procedimento => "MyText",
        :prazo => 1,
        :vl_custo => 1.5,
        :vl_cobranca => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Servico.create!(
        :descricao => "Descricao",
        :procedimento => "MyText",
        :prazo => 1,
        :vl_custo => 1.5,
        :vl_cobranca => 1.5,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of servicos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
