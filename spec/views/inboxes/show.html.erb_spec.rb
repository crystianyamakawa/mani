require 'rails_helper'

RSpec.describe "inboxes/show", type: :view do
  before(:each) do
    @inbox = assign(:inbox, Inbox.create!(
      :inbox => "Inbox",
      :objeto_descricao => "Objeto_descricao",
      :objeto_tipo => "Objeto_tipo",
      :objeto_id => 1,
      :fg_visivel => false,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Inbox/)
    expect(rendered).to match(/Objeto_descricao/)
    expect(rendered).to match(/Objeto_tipo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
