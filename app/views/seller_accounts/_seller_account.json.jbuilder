json.extract! seller_account, :id, :seller_id, :bank, :address, :account, :swift, :created_at, :updated_at
json.url seller_account_url(seller_account, format: :json)
