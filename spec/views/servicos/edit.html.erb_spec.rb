require 'rails_helper'

RSpec.describe "servicos/edit", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :descricao => "MyString",
      :procedimento => "MyText",
      :prazo => 1,
      :vl_custo => 1.5,
      :vl_cobranca => 1.5,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit servico form" do
    render

    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do

      assert_select "input#servico_descricao[name=?]", "servico[descricao]"

      assert_select "textarea#servico_procedimento[name=?]", "servico[procedimento]"

      assert_select "input#servico_prazo[name=?]", "servico[prazo]"

      assert_select "input#servico_vl_custo[name=?]", "servico[vl_custo]"

      assert_select "input#servico_vl_cobranca[name=?]", "servico[vl_cobranca]"

      assert_select "textarea#servico_obs[name=?]", "servico[obs]"

      assert_select "input#servico_created_by[name=?]", "servico[created_by]"

      assert_select "input#servico_updated_by[name=?]", "servico[updated_by]"
    end
  end
end
