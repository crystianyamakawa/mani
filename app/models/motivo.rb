class Motivo < ActiveRecord::Base
  belongs_to :motivo_pai, :class_name => "Motivo"
  has_many :motivo_filhos, :class_name => "Motivo", :foreign_key => "motivo_id"

end
