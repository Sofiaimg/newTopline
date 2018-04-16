json.extract! supplier, :id, :name, :address, :country, :contact, :phone, :fax, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
