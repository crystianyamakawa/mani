class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|
      t.integer :objeto_id
      t.string :objeto_type
      t.string :nm_contato
      t.string :tp_retorno
      t.string :ds_retorno
      t.integer :interessado_id
      t.string :papel
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
