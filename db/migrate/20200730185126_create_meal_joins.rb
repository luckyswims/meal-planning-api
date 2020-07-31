class CreateMealJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_joins do |t|
      t.references :plan, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
