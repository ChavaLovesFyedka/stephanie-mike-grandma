class AddTitleToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :title, :string
  end
end
