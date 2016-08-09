require 'rails_helper'

RSpec.describe "ordem_servico_itens/new", type: :view do
  before(:each) do
    assign(:ordem_servico_iten, OrdemServicoIten.new(
      :ordemservico_id => 1,
      :servico_id => 1,
      :fornecedor_id => 1,
      :status => "MyString",
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new ordem_servico_iten form" do
    render

    assert_select "form[action=?][method=?]", ordem_servico_itens_path, "post" do

      assert_select "input#ordem_servico_iten_ordemservico_id[name=?]", "ordem_servico_iten[ordemservico_id]"

      assert_select "input#ordem_servico_iten_servico_id[name=?]", "ordem_servico_iten[servico_id]"

      assert_select "input#ordem_servico_iten_fornecedor_id[name=?]", "ordem_servico_iten[fornecedor_id]"

      assert_select "input#ordem_servico_iten_status[name=?]", "ordem_servico_iten[status]"

      assert_select "textarea#ordem_servico_iten_obs[name=?]", "ordem_servico_iten[obs]"

      assert_select "input#ordem_servico_iten_created_by[name=?]", "ordem_servico_iten[created_by]"

      assert_select "input#ordem_servico_iten_updated_by[name=?]", "ordem_servico_iten[updated_by]"
    end
  end
end
