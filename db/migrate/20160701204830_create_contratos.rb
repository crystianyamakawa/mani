class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :descricao
      t.integer :cliente_id
      t.string :tp_evento
      t.date :dt_evento
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.string :status
      t.float :vl_negociado
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
