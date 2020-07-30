class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :meals
  has_one :user
  has_many :meals, through: :meal_joins
end
