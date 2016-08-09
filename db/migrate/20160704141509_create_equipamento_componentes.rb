class CreateEquipamentoComponentes < ActiveRecord::Migration
  def change
    create_table :equipamento_componentes do |t|
      t.integer :equipamento_id
      t.integer :componente_id
      t.float :quantidade
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
