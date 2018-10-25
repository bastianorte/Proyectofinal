class AddPortionToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :portion, :integer
  end
end
