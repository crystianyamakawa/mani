require 'rails_helper'

RSpec.describe "processo_vendas/edit", type: :view do
  before(:each) do
    @processo_venda = assign(:processo_venda, ProcessoVenda.create!(
      :nm_processo => "MyString",
      :responsavel_id => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit processo_venda form" do
    render

    assert_select "form[action=?][method=?]", processo_venda_path(@processo_venda), "post" do

      assert_select "input#processo_venda_nm_processo[name=?]", "processo_venda[nm_processo]"

      assert_select "input#processo_venda_responsavel_id[name=?]", "processo_venda[responsavel_id]"

      assert_select "textarea#processo_venda_obs[name=?]", "processo_venda[obs]"

      assert_select "input#processo_venda_created_by[name=?]", "processo_venda[created_by]"

      assert_select "input#processo_venda_updated_by[name=?]", "processo_venda[updated_by]"
    end
  end
end
