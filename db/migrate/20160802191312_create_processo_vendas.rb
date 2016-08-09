class CreateProcessoVendas < ActiveRecord::Migration
  def change
    create_table :processo_vendas do |t|
      t.string :nm_processo
      t.integer :responsavel_id
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
