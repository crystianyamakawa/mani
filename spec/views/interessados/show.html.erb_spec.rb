require 'rails_helper'

RSpec.describe "interessados/show", type: :view do
  before(:each) do
    @interessado = assign(:interessado, Interessado.create!(
      :objeto_id => 1,
      :objeto_type => "Objeto_type",
      :nm_contato => "Nm_contato",
      :tp_retorno => "Tp_retorno",
      :ds_retorno => "Ds_retorno",
      :interessado_id => 2,
      :papel => "Papel",
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Objeto_type/)
    expect(rendered).to match(/Nm_contato/)
    expect(rendered).to match(/Tp_retorno/)
    expect(rendered).to match(/Ds_retorno/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Papel/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
