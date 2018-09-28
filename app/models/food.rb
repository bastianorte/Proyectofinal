class Food < ApplicationRecord
  has_many :events
  has_many :users, through: :events

      mount_uploader :photo, ImageUploader
end
