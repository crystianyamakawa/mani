class CreateResolucaos < ActiveRecord::Migration
  def change
    create_table :resolucaos do |t|
      t.string :descricao
      t.string :status_final
      t.text :obs_resolucao
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
