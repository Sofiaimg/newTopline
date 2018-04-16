json.extract! supplier_account, :id, :supplier_id, :bank, :address, :account, :swift, :created_at, :updated_at
json.url supplier_account_url(supplier_account, format: :json)
