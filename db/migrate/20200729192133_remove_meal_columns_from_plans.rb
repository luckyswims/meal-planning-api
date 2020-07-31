class RemoveMealColumnsFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :meal1, :string
    remove_column :plans, :meal2, :string
    remove_column :plans, :meal3, :string
    remove_column :plans, :meal4, :string
    remove_column :plans, :meal5, :string
    remove_column :plans, :meal6, :string
    remove_column :plans, :meal7, :string
  end
end
