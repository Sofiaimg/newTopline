class Variant < ApplicationRecord
  belongs_to :quotation_detail
  belongs_to :size
end
