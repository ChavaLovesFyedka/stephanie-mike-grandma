class AddHiddenToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :hidden, :integer
  end
end
