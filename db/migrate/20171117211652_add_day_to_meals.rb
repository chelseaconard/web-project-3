class AddDayToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :day, :string
  end
end
