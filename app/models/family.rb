class Family < ApplicationRecord
  has_many :users

  mount_uploader :photo, Image2Uploader
end
