class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.decimal :time
      t.string :ingredient_list

      t.timestamps
    end
  end
end
