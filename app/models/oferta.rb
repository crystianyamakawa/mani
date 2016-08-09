class Oferta < ActiveRecord::Base
  belongs_to :campanha
  has_many   :ofer_produtos, :dependent => :destroy
  accepts_nested_attributes_for :ofer_produtos,
                                :allow_destroy => true,
                                :reject_if => :all_blank
end
