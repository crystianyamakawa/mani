class Atendimento < ActiveRecord::Base
  belongs_to :motivo, :class_name => "Motivo" , :foreign_key => "motivo_id"
  belongs_to :submotivo, :class_name => "Motivo" , :foreign_key => "submotivo_id"

  belongs_to :cliente, :class_name => "Cliente" , :foreign_key => "cliente_id"
  belongs_to :resolucao, :class_name => "Resolucao" , :foreign_key => "resolucao_id"
  belongs_to :equipamento, :class_name => "Equipamento" , :foreign_key => "equipamento_id"
  belongs_to :atendimemto_pai, :class_name => "Atendimento" , :foreign_key => "atendimento_id"
  has_many   :inbox, :as => :objeto

end
