class Product < ApplicationRecord
  belongs_to :category
  has_many :quotation_details
  has_many :quotations, through: :quotation_details
end
