class EtapaSituacao < ActiveRecord::Base
  belongs_to :etapa, :class_name => "Etapa" , :foreign_key => "etapa_id"
end
