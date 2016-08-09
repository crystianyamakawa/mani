class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.string :nome
      t.string :tipo
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
