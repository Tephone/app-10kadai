class Blog < ApplicationRecord
  belongs_to :user2
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  has_many :favorite_user2s, through: :favorites, source: :user2
end
