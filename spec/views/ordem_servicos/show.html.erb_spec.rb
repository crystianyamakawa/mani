require 'rails_helper'

RSpec.describe "ordem_servicos/show", type: :view do
  before(:each) do
    @ordem_servico = assign(:ordem_servico, OrdemServico.create!(
      :nr_protocolo => "Nr_protocolo",
      :nm_contato => "Nm_contato",
      :tp_retorno => "Tp_retorno",
      :ds_retorno => "Ds_retorno",
      :cliente_id => 1,
      :atendimento_id => 2,
      :status => "Status",
      :responsavel => "Responsavel",
      :equipamento_id => 3,
      :rua => "Rua",
      :nr_endereco => "Nr_endereco",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :cep => "Cep",
      :uf => "Uf",
      :lat => "Lat",
      :long => "Long",
      :obs => "MyText",
      :created_by => "Created_by",
      :updated_by => "Updated_by"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nr_protocolo/)
    expect(rendered).to match(/Nm_contato/)
    expect(rendered).to match(/Tp_retorno/)
    expect(rendered).to match(/Ds_retorno/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Responsavel/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Rua/)
    expect(rendered).to match(/Nr_endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Lat/)
    expect(rendered).to match(/Long/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created_by/)
    expect(rendered).to match(/Updated_by/)
  end
end
