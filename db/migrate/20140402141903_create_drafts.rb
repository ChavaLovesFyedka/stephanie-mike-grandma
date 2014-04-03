class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.integer :letter_id
      t.integer :variable_ordinal
      t.text    :variable_value
      
      t.timestamps
    end
  end
end
