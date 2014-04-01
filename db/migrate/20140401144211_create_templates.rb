class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :sentence_1
      t.text :sentence_2
      t.text :sentence_3
      t.text :sentence_4
      t.text :sentence_5

      t.timestamps
    end
  end
end
