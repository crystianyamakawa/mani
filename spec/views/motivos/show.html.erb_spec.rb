require 'rails_helper'

RSpec.describe "motivos/show", type: :view do
  before(:each) do
    @motivo = assign(:motivo, Motivo.create!(
      :descricao => "Descricao",
      :motivo_id => 1,
      :setor_1 => "Setor_1",
      :prazo_1 => 2,
      :setor_2 => "Setor_2",
      :prazo_2 => 3,
      :setor_3 => "Setor_3",
      :prazo_3 => 4,
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Setor_1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Setor_2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Setor_3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
