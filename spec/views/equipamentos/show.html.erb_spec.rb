require 'rails_helper'

RSpec.describe "equipamentos/show", type: :view do
  before(:each) do
    @equipamento = assign(:equipamento, Equipamento.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Ds_modelo/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Nr_patrimonio/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
