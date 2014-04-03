class AddEmailToDrafts < ActiveRecord::Migration
 def change
    add_column :drafts, :email, :string
  end
end
