class CreateOrdemServicoItens < ActiveRecord::Migration
  def change
    create_table :ordem_servico_itens do |t|
      t.integer :ordem_servico_id
      t.integer :servico_id
      t.integer :fornecedor_id
      t.string :status
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
