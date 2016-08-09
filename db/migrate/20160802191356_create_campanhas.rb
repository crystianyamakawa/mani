class CreateCampanhas < ActiveRecord::Migration
  def change
    create_table :campanhas do |t|
      t.string :nm_campanha
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.float :vl_meta
      t.float :vl_atingido
      t.integer :responsavel_id
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
