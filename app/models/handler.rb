class Handler < ApplicationRecord
  belongs_to :supplier
  mount_uploader :avatar, ImageUploader

end
