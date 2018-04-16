json.extract! handler, :id, :supplier_id, :name, :email, :created_at, :updated_at
json.url handler_url(handler, format: :json)
