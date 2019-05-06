class CarSelling < ApplicationRecord
  paginates_per 2
  mount_uploader :image, ImageUploader
end
