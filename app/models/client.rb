class Client < ApplicationRecord
  #has_many :deductions
  mount_uploader :logo, ImageUploader
end
