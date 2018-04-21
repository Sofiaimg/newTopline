class Supplier < ApplicationRecord
  has_many :handlers
  has_one :supplier_accounts
  mount_uploader :logo, ImageUploader

end
