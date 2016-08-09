require 'rails_helper'

RSpec.describe "produto_componentes/index", type: :view do
  before(:each) do
    assign(:produto_componentes, [
      ProdutoComponente.create!(
        :produto_pai_id => "Produto_pai_id",
        :produto_id => 1,
        :quantidade => 1.5,
        :vl_custo => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      ),
      ProdutoComponente.create!(
        :produto_pai_id => "Produto_pai_id",
        :produto_id => 1,
        :quantidade => 1.5,
        :vl_custo => 1.5,
        :created_by => "Created_by",
        :updated_by => "Updated_by"
      )
    ])
  end

  it "renders a list of produto_componentes" do
    render
    assert_select "tr>td", :text => "Produto_pai_id".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Created_by".to_s, :count => 2
    assert_select "tr>td", :text => "Updated_by".to_s, :count => 2
  end
end
