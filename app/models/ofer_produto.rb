class OferProduto < ActiveRecord::Base
    belongs_to :oferta
    belongs_to :produto

end
