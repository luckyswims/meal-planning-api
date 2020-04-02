class MealPlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :meal1, :meal2, :meal3, :meal4, :meal5, :meal6, :meal7
  has_one :user
end
