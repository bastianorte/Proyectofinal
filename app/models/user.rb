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
  if sex == 1
  if physical_activity_level == 1
  self.daily_calories = (66.4 + (13.75 * weight) + (5 * height) - (6.7 * age)) * 1.2
  elsif physical_activity_level == 2
  self.daily_calories = (66.4 + (13.75 * weight) + (5 * height) - (6.7 * age)) * 1.6
  else
  self.daily_calories = (66.4 + (13.75 * weight) + (5 * height) - (6.7 * age)) * 1.9
end
else
  if physical_activity_level == 1
  self.daily_calories = (665 + (9.5 * weight) + (1.8 * height) - (4.6 * age)) * 1.2
elsif physical_activity_level == 2
  self.daily_calories = (665 + (9.5 * weight) + (1.8 * height) - (4.6 * age)) * 1.6
else
  self.daily_calories = (665 + (9.5 * weight) + (1.8 * height) - (4.6 * age)) * 1.9
end
end
end

before_create :to_carbohydrates
before_update :to_carbohydrates

def to_carbohydrates
  self.daily_carbohydrates = daily_calories/10
end

end
