class Client < ApplicationRecord
  mount_uploader :logo, ImageUploader
end
