class CreateOferProdutos < ActiveRecord::Migration
  def change
    create_table :ofer_produtos do |t|
      t.integer :oferta_id
      t.integer :produto_id
      t.float :vl_oferta
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
