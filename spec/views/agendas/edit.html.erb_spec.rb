require 'rails_helper'

RSpec.describe "agendas/edit", type: :view do
  before(:each) do
    @agenda = assign(:agenda, Agenda.create!(
      :nome => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit agenda form" do
    render

    assert_select "form[action=?][method=?]", agenda_path(@agenda), "post" do

      assert_select "input#agenda_nome[name=?]", "agenda[nome]"

      assert_select "input#agenda_created_by[name=?]", "agenda[created_by]"

      assert_select "input#agenda_updated_by[name=?]", "agenda[updated_by]"
    end
  end
end
