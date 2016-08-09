require 'rails_helper'

RSpec.describe "motivos/index", type: :view do
  before(:each) do
    assign(:motivos, [
      Motivo.create!(
        :descricao => "Descricao",
        :motivo_id => 1,
        :setor_1 => "Setor_1",
        :prazo_1 => 2,
        :setor_2 => "Setor_2",
        :prazo_2 => 3,
        :setor_3 => "Setor_3",
        :prazo_3 => 4,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Motivo.create!(
        :descricao => "Descricao",
        :motivo_id => 1,
        :setor_1 => "Setor_1",
        :prazo_1 => 2,
        :setor_2 => "Setor_2",
        :prazo_2 => 3,
        :setor_3 => "Setor_3",
        :prazo_3 => 4,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of motivos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Setor_1".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Setor_2".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Setor_3".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
