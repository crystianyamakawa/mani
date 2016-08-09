class CategoriaProduto < ActiveRecord::Base
    has_many :categoria_filhos, :class_name => "CategoriaProduto", :foreign_key => "categoria_pai_id"
    has_many :produtos, :class_name => "Produto", :foreign_key => "categoria_id"
    has_many :equipamentos, :class_name => "Equipamento", :foreign_key => "categoria_id"

    belongs_to :categoria_pai, :class_name => "CategoriaProduto"
end
