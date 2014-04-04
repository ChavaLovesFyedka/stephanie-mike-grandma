class AddShareOptionToDrafts < ActiveRecord::Migration
  def change
    add_column :drafts, :share_option, :string
  end
end
