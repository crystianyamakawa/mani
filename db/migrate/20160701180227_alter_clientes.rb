class AlterClientes < ActiveRecord::Migration
  def change
    rename_column :clientes, :nr_cnpj_cpf, :nr_cpf
    add_column :clientes, :nr_cnpj, :string
    add_column :clientes, :complemento, :string

  end
end
