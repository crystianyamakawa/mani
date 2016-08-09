class CreateOppProdutos < ActiveRecord::Migration
  def change
    create_table :opp_produtos do |t|
      t.integer :oportunidade_id
      t.integer :produto_id
      t.float :vl_negociado
      t.integer :prazo_entrega
      t.datetime :dt_entrega
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
