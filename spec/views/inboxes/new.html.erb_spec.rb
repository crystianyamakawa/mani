require 'rails_helper'

RSpec.describe "inboxes/new", type: :view do
  before(:each) do
    assign(:inbox, Inbox.new(
      :inbox => "MyString",
      :objeto_descricao => "MyString",
      :objeto_tipo => "MyString",
      :objeto_id => 1,
      :fg_visivel => false,
      :obs => "MyText",
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new inbox form" do
    render

    assert_select "form[action=?][method=?]", inboxes_path, "post" do

      assert_select "input#inbox_inbox[name=?]", "inbox[inbox]"

      assert_select "input#inbox_objeto_descricao[name=?]", "inbox[objeto_descricao]"

      assert_select "input#inbox_objeto_tipo[name=?]", "inbox[objeto_tipo]"

      assert_select "input#inbox_objeto_id[name=?]", "inbox[objeto_id]"

      assert_select "input#inbox_fg_visivel[name=?]", "inbox[fg_visivel]"

      assert_select "textarea#inbox_obs[name=?]", "inbox[obs]"

      assert_select "input#inbox_created_by[name=?]", "inbox[created_by]"

      assert_select "input#inbox_updated_by[name=?]", "inbox[updated_by]"
    end
  end
end
