class AddCalorieCountToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :calorie_count, :int
  end
end
