class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.text :var1
      t.text :var2
      t.text :var3
      t.text :var4
      t.text :var5
      t.text :var6
      t.text :var7
      t.text :var8
      t.text :var9
      t.text :var10

      t.timestamps
    end
  end
end
