require 'rails_helper'

RSpec.describe "inboxes/index", type: :view do
  before(:each) do
    assign(:inboxes, [
      Inbox.create!(
        :inbox => "Inbox",
        :objeto_descricao => "Objeto_descricao",
        :objeto_tipo => "Objeto_tipo",
        :objeto_id => 1,
        :fg_visivel => false,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      Inbox.create!(
        :inbox => "Inbox",
        :objeto_descricao => "Objeto_descricao",
        :objeto_tipo => "Objeto_tipo",
        :objeto_id => 1,
        :fg_visivel => false,
        :obs => "MyText",
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of inboxes" do
    render
    assert_select "tr>td", :text => "Inbox".to_s, :count => 2
    assert_select "tr>td", :text => "Objeto_descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Objeto_tipo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
