class AlterDespesa < ActiveRecord::Migration
  def change
    add_column :despesas, :tp_despesa, :string
    add_column :despesas, :contrato_id,	:integer
    add_column :despesas, :dt_executado,	:date
    add_column :despesas, :vl_executado,	:float
  end
end
