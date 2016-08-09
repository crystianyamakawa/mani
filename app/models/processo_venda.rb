class ProcessoVenda < ActiveRecord::Base
  belongs_to :responsavel, :class_name => "User" , :foreign_key => "responsavel_id"
  has_many :fases, :dependent => :destroy
  accepts_nested_attributes_for :fases,
                                :allow_destroy => true,
                                :reject_if => :all_blank
end
