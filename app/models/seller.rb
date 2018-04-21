class Seller < ApplicationRecord
  has_one :account
  mount_uploader :avatar, ImageUploader

end
