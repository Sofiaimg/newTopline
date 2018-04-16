class Quotation < ApplicationRecord
  belongs_to :season
  belongs_to :supplier
  belongs_to :handler
  belongs_to :seller
  belongs_to :client
  belongs_to :payment_term
  has_many :quotation_details
  has_many :products, through: :quotation_details
end
