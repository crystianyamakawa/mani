class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :tipo
      t.string :codigo
      t.string :descricao
      t.integer :marca_id
      t.string :modelo
      t.float :vl_custo
      t.float :vl_venda
      t.string :unidade
      t.integer :categoria_pai_id
      t.integer :categoria_id
      t.integer :estoque_id
      t.string :ean
      t.string :ncm
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
