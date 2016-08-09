class CreateMotivos < ActiveRecord::Migration
  def change
    create_table :motivos do |t|
      t.string :descricao
      t.integer :motivo_id
      t.string :setor_1
      t.integer :prazo_1
      t.string :setor_2
      t.integer :prazo_2
      t.string :setor_3
      t.integer :prazo_3
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
