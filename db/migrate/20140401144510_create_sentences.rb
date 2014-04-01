class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.integer :template_id
      t.integer :variable_id
      t.text :sentence_text

      t.timestamps
    end
  end
end
