class Produto < ActiveRecord::Base
  belongs_to :marca
  belongs_to :categoriaproduto, :class_name => "CategoriaProduto" , :foreign_key => "categoria_id"
  belongs_to :estoque, :class_name => "Estoque" , :foreign_key => "estoque_id"
  has_many   :componentes, :class_name => "ProdutoComponente"
#  has_many :contrato_produtos
#has_many :fin_movimentos
#has_many :produtos, :through => :contrato_produtos,
#:class_name =>"ContratoProdutos"

end
