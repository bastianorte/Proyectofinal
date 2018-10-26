class Event < ApplicationRecord
  belongs_to :food
  belongs_to :user

  before_create :to_portions
  before_update :to_portions

  def to_portions
      self.calorie = food.calorie * portion
      self.protein = food.protein * portion
      self.carbohidrate = food.carbohydrate * portion
  end



end
