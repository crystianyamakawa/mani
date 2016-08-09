require 'rails_helper'

RSpec.describe "contrato_equipamentos/index", type: :view do
  before(:each) do
    assign(:contrato_equipamentos, [
      ContratoEquipamento.create!(
        :contrato_id => 1,
        :equipamento_id => 2,
        :quantidade => 3,
        :vl_tabela => 1.5,
        :vl_negociado => 1.5,
        :vl_locacao => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      ContratoEquipamento.create!(
        :contrato_id => 1,
        :equipamento_id => 2,
        :quantidade => 3,
        :vl_tabela => 1.5,
        :vl_negociado => 1.5,
        :vl_locacao => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of contrato_equipamentos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
