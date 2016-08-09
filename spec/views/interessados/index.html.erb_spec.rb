require 'rails_helper'

RSpec.describe "interessados/index", type: :view do
  before(:each) do
    assign(:interessados, [
      Interessado.create!(
        :objeto_id => 1,
        :objeto_type => "Objeto_type",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :interessado_id => 2,
        :papel => "Papel",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Interessado.create!(
        :objeto_id => 1,
        :objeto_type => "Objeto_type",
        :nm_contato => "Nm_contato",
        :tp_retorno => "Tp_retorno",
        :ds_retorno => "Ds_retorno",
        :interessado_id => 2,
        :papel => "Papel",
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of interessados" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Objeto_type".to_s, :count => 2
    assert_select "tr>td", :text => "Nm_contato".to_s, :count => 2
    assert_select "tr>td", :text => "Tp_retorno".to_s, :count => 2
    assert_select "tr>td", :text => "Ds_retorno".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Papel".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
