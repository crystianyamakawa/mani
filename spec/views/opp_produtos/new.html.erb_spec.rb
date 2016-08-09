require 'rails_helper'

RSpec.describe "opp_produtos/new", type: :view do
  before(:each) do
    assign(:opp_produto, OppProduto.new(
      :oportunidade_id => 1,
      :produto_id => 1,
      :vl_negociado => 1.5,
      :prazo_entrega => 1,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new opp_produto form" do
    render

    assert_select "form[action=?][method=?]", opp_produtos_path, "post" do

      assert_select "input#opp_produto_oportunidade_id[name=?]", "opp_produto[oportunidade_id]"

      assert_select "input#opp_produto_produto_id[name=?]", "opp_produto[produto_id]"

      assert_select "input#opp_produto_vl_negociado[name=?]", "opp_produto[vl_negociado]"

      assert_select "input#opp_produto_prazo_entrega[name=?]", "opp_produto[prazo_entrega]"

      assert_select "textarea#opp_produto_obs[name=?]", "opp_produto[obs]"

      assert_select "input#opp_produto_created_by[name=?]", "opp_produto[created_by]"

      assert_select "input#opp_produto_updated_by[name=?]", "opp_produto[updated_by]"
    end
  end
end
