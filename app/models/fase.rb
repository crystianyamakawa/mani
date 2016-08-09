class Fase < ActiveRecord::Base
  belongs_to :processo_venda, :class_name => "ProcessoVenda" , :foreign_key => "processo_venda_id"
  has_many :etapas, :dependent => :destroy
  accepts_nested_attributes_for :etapas,
                                :allow_destroy => true,
                                :reject_if => :all_blank
end
