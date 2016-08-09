require 'rails_helper'

RSpec.describe "oferta/show", type: :view do
  before(:each) do
    @ofertum = assign(:ofertum, Ofertum.create!(
      :nm_oferta => "Nm_oferta",
      :campanha_id => 1,
      :vl_oferta => 1.5,
      :vl_desconto => 1.5,
      :pc_desconto => 1.5,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nm_oferta/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
