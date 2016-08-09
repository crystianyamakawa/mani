require 'rails_helper'

RSpec.describe "oportunidades/show", type: :view do
  before(:each) do
    @oportunidade = assign(:oportunidade, Oportunidade.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_contato/)
    expect(rendered).to match(/Tp_retorno/)
    expect(rendered).to match(/Ds_retorno/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Resultado/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
