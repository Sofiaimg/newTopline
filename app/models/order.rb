class Order < ApplicationRecord
  belongs_to :quotation
  belongs_to :quotationdetail
  belongs_to :variant
end
