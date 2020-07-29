class RenameMealPlanToPlan < ActiveRecord::Migration[5.2]
  def change
    rename_table('meal_plans', 'plans')
  end
end
