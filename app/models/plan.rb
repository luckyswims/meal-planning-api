class Plan < ApplicationRecord
  belongs_to :user
  has_many :meal_joins, dependent: :destroy
  has_many :meals, through: :meal_joins
end
