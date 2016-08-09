require 'rails_helper'

RSpec.describe "agendas/new", type: :view do
  before(:each) do
    assign(:agenda, Agenda.new(
      :nome => "MyString",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new agenda form" do
    render

    assert_select "form[action=?][method=?]", agendas_path, "post" do

      assert_select "input#agenda_nome[name=?]", "agenda[nome]"

      assert_select "input#agenda_created_by[name=?]", "agenda[created_by]"

      assert_select "input#agenda_updated_by[name=?]", "agenda[updated_by]"
    end
  end
end
