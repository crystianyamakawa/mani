class AlterFinConta < ActiveRecord::Migration
  def change
        add_column :fin_conta, :descricao, :string
  end
end
