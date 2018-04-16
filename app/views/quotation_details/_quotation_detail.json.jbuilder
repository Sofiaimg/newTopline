json.extract! quotation_detail, :id, :quotation_id, :brand_id, :product_id, :style, :color_id, :quantity, :size_id, :ratio, :delivery_date, :target_price, :final_price, :otherdetails, :total, :status, :created_at, :updated_at
json.url quotation_detail_url(quotation_detail, format: :json)
