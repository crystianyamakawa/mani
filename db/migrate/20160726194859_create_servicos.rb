class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :descricao
      t.text :procedimento
      t.integer :prazo
      t.float :vl_custo
      t.float :vl_cobranca
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
