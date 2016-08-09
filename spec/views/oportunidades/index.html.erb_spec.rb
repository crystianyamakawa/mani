require 'rails_helper'

RSpec.describe "oportunidades/index", type: :view do
  before(:each) do
    assign(:oportunidades, [
      Oportunidade.create!(
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :processo_venda_id => 2,
        :campanha_id => 3,
        :oferta_id => 4,
        :fase_id => 5,
        :etapa_id => 6,
        :situacao_etapa => 7,
        :status => "Status",
        :resultado => "Resultado",
        :motivo_resultado_id => 8,
        :pc_evolucao => 1.5,
        :pc_sucesso => 1.5,
        :responsavel_id => 9,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Oportunidade.create!(
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :cliente_id => 1,
        :processo_venda_id => 2,
        :campanha_id => 3,
        :oferta_id => 4,
        :fase_id => 5,
        :etapa_id => 6,
        :situacao_etapa => 7,
        :status => "Status",
        :resultado => "Resultado",
        :motivo_resultado_id => 8,
        :pc_evolucao => 1.5,
        :pc_sucesso => 1.5,
        :responsavel_id => 9,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of oportunidades" do
    render
    assert_select "tr>td", :text => "Nm_contato".to_s, :count => 2
    assert_select "tr>td", :text => "Tp_retorno".to_s, :count => 2
    assert_select "tr>td", :text => "Ds_retorno".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Resultado".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
