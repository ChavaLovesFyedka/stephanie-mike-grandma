class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|

      t.text :variable_1_text
      t.text :variable_2_text
      t.text :variable_3_text
      t.text :variable_4_text
      t.text :variable_5_text

      t.timestamps
    end
  end
end


