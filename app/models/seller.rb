class Seller < ApplicationRecord
  has_one :seller_account
  mount_uploader :avatar, ImageUploader

end
