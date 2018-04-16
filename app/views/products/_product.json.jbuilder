json.extract! product, :id, :category_id, :photo, :description, :finish, :composition, :construction, :fit, :placket, :pocket, :washing, :other_details, :created_at, :updated_at
json.url product_url(product, format: :json)
