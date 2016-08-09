require 'rails_helper'

RSpec.describe "equipamento_componentes/show", type: :view do
  before(:each) do
    @equipamento_componente = assign(:equipamento_componente, EquipamentoComponente.create!(
      :equipamento_id => 1,
      :componente_id => 2,
      :quantidade => 1.5,
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
