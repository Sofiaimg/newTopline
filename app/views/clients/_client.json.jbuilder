json.extract! client, :id, :name, :address, :country, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
