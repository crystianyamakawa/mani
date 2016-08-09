class AlterComponente < ActiveRecord::Migration
  def change
        rename_column :componente_caracteristicas, :equipamento_id, :componente_id
  end
end
