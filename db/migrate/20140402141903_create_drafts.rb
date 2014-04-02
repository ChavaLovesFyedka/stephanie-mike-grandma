class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.integer :letter_id
      t.integer :variable_ordinal
      t.text    :variable_content
      
      t.timestamps
    end
  end
end
