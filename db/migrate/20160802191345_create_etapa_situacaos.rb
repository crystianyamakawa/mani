class CreateEtapaSituacaos < ActiveRecord::Migration
  def change
    create_table :etapa_situacaos do |t|
      t.integer :etapa_id
      t.string :nm_situacao
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
