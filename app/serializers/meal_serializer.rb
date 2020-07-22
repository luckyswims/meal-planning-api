class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :ingredient_list
end
