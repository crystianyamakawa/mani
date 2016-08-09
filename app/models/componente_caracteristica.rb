class ComponenteCaracteristica < ActiveRecord::Base
  belongs_to :componente, :class_name => "Componente" , :foreign_key => "componente_id"
  belongs_to :caracteristica, :class_name => "Caracteristica" , :foreign_key => "caracteristica_id"
end
