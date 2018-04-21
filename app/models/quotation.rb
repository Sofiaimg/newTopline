class Quotation < ApplicationRecord
  belongs_to :season
  belongs_to :supplier
  belongs_to :handler
  belongs_to :seller
  belongs_to :client
  belongs_to :payment_term
  has_many :quotation_details
  has_many :products, through: :quotation_details


  #after_update :order_create, if: :status?
  #scope :status, -> { where[status: true] }


  #def status?
  #    self.status == true
  #end

  #def order_create
#
#    quotation = Quotation.find[paramas[:quotation_id]]
#    quotation_detail = QuotationDetail.find[paramas[:quotation_detail_id]]
#    @order = quotation.quotation_details.build
#    render @order
#  end
#end
end
