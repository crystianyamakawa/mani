class CreateContratoEquipamentos < ActiveRecord::Migration
  def change
    create_table :contrato_equipamentos do |t|
      t.integer :contrato_id
      t.integer :equipamento_id
      t.integer :quantidade
      t.float :vl_tabela
      t.float :vl_negociado
      t.float :vl_locacao
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
