class AddTasksToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :weight, :integer
    add_column :events, :protein, :integer
    add_column :events, :calorie, :integer
    add_column :events, :carbohidrate, :integer
  end
end
