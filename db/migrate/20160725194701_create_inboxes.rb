class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.string :inbox
      t.string :objeto_descricao
      t.string :objeto_tipo
      t.integer :objeto_id
      t.boolean :fg_visivel
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
