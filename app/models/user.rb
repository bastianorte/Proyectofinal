class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :family , optional: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :events
  has_many :foods, through: :events

 enum role: [:admin, :visit]

 before_create :to_proteins
 before_update :to_proteins

def to_proteins
   self.daily_proteins = weight
end

  before_create :to_calories
  before_update :to_calories

def to_calories
  self.daily_calories = 66
end

def to_carbohydrates
end

end
