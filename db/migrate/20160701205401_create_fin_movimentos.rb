class CreateFinMovimentos < ActiveRecord::Migration
  def change
    create_table :fin_movimentos do |t|
      t.string :tp_movimento
      t.string :descricao
      t.float :valor
      t.string :status
      t.string :motivo_status
      t.date :dt_previsto
      t.date :dt_executado
      t.integer :contrato_id
      t.integer :fin_conta_id
      t.integer :despesa_id
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
