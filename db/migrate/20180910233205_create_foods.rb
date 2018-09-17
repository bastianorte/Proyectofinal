class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :photo
      t.integer :weight
      t.integer :protein
      t.integer :calorie
      t.integer :carbohydrate
      t.integer :portion
      t.integer :type

      t.timestamps
    end
  end
end
