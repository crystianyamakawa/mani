class CreateProdutoComponentes < ActiveRecord::Migration
  def change
    create_table :produto_componentes do |t|
      t.string :produto_pai_id
      t.integer :produto_id
      t.float :quantidade
      t.float :vl_custo
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
