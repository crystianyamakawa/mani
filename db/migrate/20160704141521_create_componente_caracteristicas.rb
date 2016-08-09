class CreateComponenteCaracteristicas < ActiveRecord::Migration
  def change
    create_table :componente_caracteristicas do |t|
      t.integer :equipamento_id
      t.integer :caracteristica_id
      t.string :valor
      t.string :unidade
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
