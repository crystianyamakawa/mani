require 'rails_helper'

RSpec.describe "resolucaos/new", type: :view do
  before(:each) do
    assign(:resolucao, Resolucao.new(
      :descricao => "MyString",
      :status_final => "MyString",
      :obs_resolucao => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new resolucao form" do
    render

    assert_select "form[action=?][method=?]", resolucaos_path, "post" do

      assert_select "input#resolucao_descricao[name=?]", "resolucao[descricao]"

      assert_select "input#resolucao_status_final[name=?]", "resolucao[status_final]"

      assert_select "textarea#resolucao_obs_resolucao[name=?]", "resolucao[obs_resolucao]"

      assert_select "input#resolucao_created_by[name=?]", "resolucao[created_by]"

      assert_select "input#resolucao_updated_by[name=?]", "resolucao[updated_by]"
    end
  end
end
