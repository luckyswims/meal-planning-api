class CreateMealPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_plans do |t|
      t.string :name
      t.string :meal1
      t.string :meal2
      t.string :meal3
      t.string :meal4
      t.string :meal5
      t.string :meal6
      t.string :meal7
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
