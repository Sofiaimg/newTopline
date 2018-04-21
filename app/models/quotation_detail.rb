class QuotationDetail < ApplicationRecord
  belongs_to :quotation
  belongs_to :brand
  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many :variants
  accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true

def subtotal
  quotation_detail.final_price * quotation_detail.quantity
end

end
