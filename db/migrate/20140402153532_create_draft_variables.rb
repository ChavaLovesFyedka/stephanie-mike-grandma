class CreateDraftVariables < ActiveRecord::Migration
  def change
    create_table :draft_variables do |t|
      t.integer :draft_id
      t.integer :letter_id
      t.integer :user_id
      t.integer :variable_ordinal
      t.string :variable_value

      t.timestamps
    end
  end
end
