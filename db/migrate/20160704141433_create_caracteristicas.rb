class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.string :codigo
      t.string :descricao
      t.string :unidade
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
