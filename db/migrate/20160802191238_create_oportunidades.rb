class CreateOportunidades < ActiveRecord::Migration
  def change
    create_table :oportunidades do |t|
      t.string :nm_contato
      t.string :tp_retorno
      t.string :ds_retorno
      t.integer :cliente_id
      t.integer :processo_venda_id
      t.integer :campanha_id
      t.integer :oferta_id
      t.integer :fase_id
      t.integer :etapa_id
      t.integer :etapa_situacao_id
      t.string :status
      t.string :resultado
      t.integer :motivo_resultado_id
      t.float :pc_evolucao
      t.float :pc_sucesso
      t.integer :responsavel_id
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
