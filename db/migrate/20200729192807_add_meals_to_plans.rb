class AddMealsToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :meals, :integer, array: true, default: []
  end
end
