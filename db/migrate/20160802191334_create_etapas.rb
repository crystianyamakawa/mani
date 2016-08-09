class CreateEtapas < ActiveRecord::Migration
  def change
    create_table :etapas do |t|
      t.integer :fase_id
      t.string :nm_etapa
      t.integer :nr_sequencia
      t.integer :responsavel_id
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
