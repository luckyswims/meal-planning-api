class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_joins
  has_many :plans, through: :meal_joins
end
