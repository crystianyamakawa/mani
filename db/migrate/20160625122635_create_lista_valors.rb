class CreateListaValors < ActiveRecord::Migration
  def change
    create_table :lista_valors do |t|
      t.string :nm_lista
      t.string :valor
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
