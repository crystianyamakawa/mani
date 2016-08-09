class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nome
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
