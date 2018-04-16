class QuotationDetail < ApplicationRecord
  belongs_to :quotation
  belongs_to :brand
  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many :variants
  accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true



end
