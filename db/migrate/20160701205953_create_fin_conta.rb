class CreateFinConta < ActiveRecord::Migration
  def change
    create_table :fin_conta do |t|
      t.string :banco
      t.string :nm_banco
      t.string :agencia
      t.string :nm_agencia
      t.string :conta
      t.string :nm_titular
      t.string :nr_documento_titular
      t.float :saldo
      t.string :status
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
