class CreateFases < ActiveRecord::Migration
  def change
    create_table :fases do |t|
      t.string :nm_fase
      t.integer :processo_venda_id
      t.integer :nr_sequencia
      t.integer :responsavel_id
      t.float :pc_processo
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
