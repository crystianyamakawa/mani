class EquipamentoComponente < ActiveRecord::Base
  belongs_to :componente, :class_name => "Componente" , :foreign_key => "componente_id"
  belongs_to :equipamento, :class_name => "Equipamento" , :foreign_key => "equipamento_id"

end
