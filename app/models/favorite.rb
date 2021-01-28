class Favorite < ApplicationRecord
    belongs_to :user2
    belongs_to :blog
    # mount_uploader :image, ImageUploader
end
