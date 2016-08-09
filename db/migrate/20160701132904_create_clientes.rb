class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :nr_telefone
      t.string :nr_telefone2
      t.string :contato
      t.boolean :fg_cliente
      t.boolean :fg_fornecedor
      t.string :tp_pessoa
      t.string :nr_cnpj_cpf
      t.string :nr_insc_estadual
      t.string :rua
      t.string :nr_endereco
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :uf
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
