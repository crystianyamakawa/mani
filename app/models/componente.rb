class Componente < ActiveRecord::Base
  belongs_to :marca
  belongs_to :categoriacomponente, :class_name => "CategoriaComponente" , :foreign_key => "categoria_id"
  belongs_to :estoque, :class_name => "Estoque" , :foreign_key => "estoque_id"
  has_many   :caracteristicas, :class_name => "ComponenteCaracteristica"
end
