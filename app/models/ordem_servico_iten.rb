class OrdemServicoIten < ActiveRecord::Base
  belongs_to :ordem_servico, :class_name => "OrdemServico" , :foreign_key => "ordem_servico_id"
  belongs_to :fornecedor, :class_name => "Cliente" , :foreign_key => "fornecedor_id"
  belongs_to :servico, :class_name => "Servico" , :foreign_key => "servico_id"


end
