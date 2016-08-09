require 'rails_helper'

RSpec.describe "etapa_situacaos/new", type: :view do
  before(:each) do
    assign(:etapa_situacao, EtapaSituacao.new(
      :etapa_id => 1,
      :nm_situacao => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new etapa_situacao form" do
    render

    assert_select "form[action=?][method=?]", etapa_situacaos_path, "post" do

      assert_select "input#etapa_situacao_etapa_id[name=?]", "etapa_situacao[etapa_id]"

      assert_select "input#etapa_situacao_nm_situacao[name=?]", "etapa_situacao[nm_situacao]"

      assert_select "input#etapa_situacao_created_by[name=?]", "etapa_situacao[created_by]"

      assert_select "input#etapa_situacao_updated_by[name=?]", "etapa_situacao[updated_by]"
    end
  end
end
