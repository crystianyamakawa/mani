class CreateContratoProdutos < ActiveRecord::Migration
  def change
    create_table :contrato_produtos do |t|
      t.integer :contrato_id
      t.integer :produto_id
      t.integer :quantidade
      t.float :vl_tabela
      t.float :vl_negociado
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
