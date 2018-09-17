class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :family , optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :events
         has_many :foods, through: :events

         enum role: [:admin, :visit]

         after_create :to_proteins
         after_update :to_proteins

         def to_proteins
        self.daily_proteins = weight
          end

        def to_calories
          if sex = 1
          self.daily_calories = 66 + (13 * weight) + (5 * height) - (6 * age)
        else
          self.daily_calories = 655 + (9 * weight) + (2 * height) - (4 * age)
      end
    end

    def to_carbohydrates
    end


end
