class Contrato < ActiveRecord::Base
  belongs_to :cliente

  has_many :contrato_equipamentos
  has_many :fin_movimentos
  has_many :produtos, :class_name =>"ContratoProduto"
end
