require 'rails_helper'

RSpec.describe "equipamento_componentes/new", type: :view do
  before(:each) do
    assign(:equipamento_componente, EquipamentoComponente.new(
      :equipamento_id => 1,
      :componente_id => 1,
      :quantidade => 1.5,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new equipamento_componente form" do
    render

    assert_select "form[action=?][method=?]", equipamento_componentes_path, "post" do

      assert_select "input#equipamento_componente_equipamento_id[name=?]", "equipamento_componente[equipamento_id]"

      assert_select "input#equipamento_componente_componente_id[name=?]", "equipamento_componente[componente_id]"

      assert_select "input#equipamento_componente_quantidade[name=?]", "equipamento_componente[quantidade]"

      assert_select "input#equipamento_componente_created_by[name=?]", "equipamento_componente[created_by]"

      assert_select "input#equipamento_componente_updated_by[name=?]", "equipamento_componente[updated_by]"
    end
  end
end
