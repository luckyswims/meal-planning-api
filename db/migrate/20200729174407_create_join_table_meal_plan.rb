class CreateJoinTableMealPlan < ActiveRecord::Migration[5.2]
  def change
    create_join_table :meals, :plans do |t|
      t.index %i[plan_id meal_id]
    end
  end
end
