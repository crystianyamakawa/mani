class CreateCategoriaProdutos < ActiveRecord::Migration
  def change
    create_table :categoria_produtos do |t|
      t.string :nome
      t.integer :categoria_pai_id
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
