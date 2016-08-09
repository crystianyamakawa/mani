require 'rails_helper'

RSpec.describe "produtos/index", type: :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :tipo => "Tipo",
        :codigo => "Codigo",
        :descricao => "Descricao",
        :marca_id => "",
        :modelo => "Modelo",
        :vl_custo => 1.5,
        :vl_venda => 1.5,
        :unidade => "Unidade",
        :categoria_pai_id => 1,
        :categoria_id => 2,
        :estoque_id => 3,
        :ean => "Ean",
        :ncm => "Ncm",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Produto.create!(
        :tipo => "Tipo",
        :codigo => "Codigo",
        :descricao => "Descricao",
        :marca_id => "",
        :modelo => "Modelo",
        :vl_custo => 1.5,
        :vl_venda => 1.5,
        :unidade => "Unidade",
        :categoria_pai_id => 1,
        :categoria_id => 2,
        :estoque_id => 3,
        :ean => "Ean",
        :ncm => "Ncm",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unidade".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Ean".to_s, :count => 2
    assert_select "tr>td", :text => "Ncm".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
