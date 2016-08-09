class CreateComponentes < ActiveRecord::Migration
  def change
    create_table :componentes do |t|
      t.string :codigo
      t.string :descricao
      t.string :tipo
      t.integer :marca_id
      t.string :ds_modelo
      t.float :vl_aquisicao
      t.float :vl_venda
      t.float :vl_locacao
      t.string :unidade
      t.integer :categoria_pai_id
      t.integer :categoria_id
      t.integer :estoque_id
      t.string :nr_patrimonio
      t.string :status
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
