class Blog < ApplicationRecord
  belongs_to :user2
  mount_uploader :image, ImageUploader
end
