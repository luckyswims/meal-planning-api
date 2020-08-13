class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_joins, dependent: :destroy
  has_many :plans, through: :meal_joins
end
