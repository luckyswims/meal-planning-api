class MealJoin < ApplicationRecord
  belongs_to :plan
  belongs_to :meal
end
