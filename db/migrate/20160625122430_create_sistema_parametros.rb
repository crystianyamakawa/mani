class CreateSistemaParametros < ActiveRecord::Migration
  def change
    create_table :sistema_parametros do |t|
      t.string :nome_empresa
      t.boolean :fg_app_locacao
      t.boolean :fg_app_comercial
      t.boolean :fg_app_crm
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
