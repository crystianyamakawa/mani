class Campanha < ActiveRecord::Base
  belongs_to :responsavel, :class_name => "User" , :foreign_key => "responsavel_id"
  has_many :ofertas, :dependent => :destroy
  accepts_nested_attributes_for :ofertas,
                                :allow_destroy => true,
                                :reject_if => :all_blank
end
