require 'rails_helper'

RSpec.describe "equipamentos/index", type: :view do
  before(:each) do
    assign(:equipamentos, [
      Equipamento.create!(
        :codigo => "Codigo",
        :descricao => "Descricao",
        :tipo => "Tipo",
        :marca_id => 1,
        :ds_modelo => "Ds_modelo",
        :vl_aquisicao => 1.5,
        :vl_venda => 1.5,
        :vl_locacao => 1.5,
        :unidade => "Unidade",
        :categoria_pai_id => 2,
        :categoria_id => 3,
        :estoque_id => 4,
        :nr_patrimonio => "Nr_patrimonio",
        :status => "Status",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Equipamento.create!(
        :codigo => "Codigo",
        :descricao => "Descricao",
        :tipo => "Tipo",
        :marca_id => 1,
        :ds_modelo => "Ds_modelo",
        :vl_aquisicao => 1.5,
        :vl_venda => 1.5,
        :vl_locacao => 1.5,
        :unidade => "Unidade",
        :categoria_pai_id => 2,
        :categoria_id => 3,
        :estoque_id => 4,
        :nr_patrimonio => "Nr_patrimonio",
        :status => "Status",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of equipamentos" do
    render
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ds_modelo".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unidade".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Nr_patrimonio".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
