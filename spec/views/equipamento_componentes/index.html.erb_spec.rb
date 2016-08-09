require 'rails_helper'

RSpec.describe "equipamento_componentes/index", type: :view do
  before(:each) do
    assign(:equipamento_componentes, [
      EquipamentoComponente.create!(
        :equipamento_id => 1,
        :componente_id => 2,
        :quantidade => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      EquipamentoComponente.create!(
        :equipamento_id => 1,
        :componente_id => 2,
        :quantidade => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of equipamento_componentes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
