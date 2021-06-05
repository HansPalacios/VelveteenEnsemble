class Venue < ApplicationRecord
	  mount_uploader :image, ImageUploader
	  has_one_attached :image
end
