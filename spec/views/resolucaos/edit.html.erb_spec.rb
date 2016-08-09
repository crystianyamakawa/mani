require 'rails_helper'

RSpec.describe "resolucaos/edit", type: :view do
  before(:each) do
    @resolucao = assign(:resolucao, Resolucao.create!(
      :descricao => "MyString",
      :status_final => "MyString",
      :obs_resolucao => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit resolucao form" do
    render

    assert_select "form[action=?][method=?]", resolucao_path(@resolucao), "post" do

      assert_select "input#resolucao_descricao[name=?]", "resolucao[descricao]"

      assert_select "input#resolucao_status_final[name=?]", "resolucao[status_final]"

      assert_select "textarea#resolucao_obs_resolucao[name=?]", "resolucao[obs_resolucao]"

      assert_select "input#resolucao_created_by[name=?]", "resolucao[created_by]"

      assert_select "input#resolucao_updated_by[name=?]", "resolucao[updated_by]"
    end
  end
end
