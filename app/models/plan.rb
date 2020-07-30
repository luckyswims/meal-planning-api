class Plan < ApplicationRecord
  belongs_to :user
  has_many :meal_joins
  has_many :meals, through: :meal_joins
end
