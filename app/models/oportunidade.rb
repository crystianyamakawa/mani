class Oportunidade < ActiveRecord::Base

  belongs_to :cliente, :class_name => "Cliente" , :foreign_key => "cliente_id"
  belongs_to :processo_venda, :class_name => "ProcessoVenda" , :foreign_key => "processo_venda_id"
  belongs_to :campanha, :class_name => "Campanha" , :foreign_key => "campanha_id"

  belongs_to :oferta, :class_name => "Oferta" , :foreign_key => "oferta_id"
  belongs_to :fase, :class_name => "Fase" , :foreign_key => "fase_id"
  belongs_to :etapa, :class_name => "Etapa" , :foreign_key => "etapa_id"
  belongs_to :etapa_situacao, :class_name => "EtapaSituacao" , :foreign_key => "etapa_situacao_id"
  has_many   :inbox, :as => :objeto
end
