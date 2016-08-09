class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.string :nm_oferta
      t.integer :campanha_id
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.float :vl_oferta
      t.float :vl_desconto
      t.float :pc_desconto
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
