json.extract! product, :id, :category_id, :photo, :description, :finish, :composition, :fit, :construction, :placket, :pocket, :washing, :note, :created_at, :updated_at
json.url product_url(product, format: :json)
