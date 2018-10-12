class AddFielddToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imc, :integer
  end
end
