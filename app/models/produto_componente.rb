class ProdutoComponente < ActiveRecord::Base
  belongs_to :produtopai, :class_name => "Produto" , :foreign_key => "produto_pai_id"
  belongs_to :componente, :class_name => "Produto" , :foreign_key => "produto_id"

end
