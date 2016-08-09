class Etapa < ActiveRecord::Base
  belongs_to :fase, :class_name => "Fase" , :foreign_key => "fase_id"
  has_many :etapa_situacaos, :dependent => :destroy
  accepts_nested_attributes_for :etapa_situacaos,
                                :allow_destroy => true,
                                :reject_if => :all_blank
end
