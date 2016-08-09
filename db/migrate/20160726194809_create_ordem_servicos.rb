class CreateOrdemServicos < ActiveRecord::Migration
  def change
    create_table :ordem_servicos do |t|
      t.string :nr_protocolo
      t.string :nm_contato
      t.string :tp_retorno
      t.string :ds_retorno
      t.integer :cliente_id
      t.integer :atendimento_id
      t.string :status
      t.string :responsavel
      t.integer :equipamento_id
      t.string :rua
      t.string :nr_endereco
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :uf
      t.string :lat
      t.string :long
      t.date :dt_fechamento
      t.text :obs
      t.string :created_by
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
