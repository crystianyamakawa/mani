class OrdemServico < ActiveRecord::Base
  belongs_to :cliente, :class_name => "Cliente" , :foreign_key => "cliente_id"
  belongs_to :equipamento, :class_name => "Equipamento" , :foreign_key => "equipamento_id"
  belongs_to :atendimemto, :class_name => "Atendimento" , :foreign_key => "atendimento_id"
  has_many   :inboxes, :as => :objeto
  has_many   :itens, :class_name => "OrdemServicoIten"
end
