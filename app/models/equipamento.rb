class Equipamento < ActiveRecord::Base
  belongs_to :marca, :class_name => "Marca"
  belongs_to :categoriaequipamento, :class_name => "CategoriaProduto" , :foreign_key => "categoria_id"
  belongs_to :estoque, :class_name => "Estoque" , :foreign_key => "estoque_id"
  has_many   :componentes, :class_name => "EquipamentoComponente"

end
