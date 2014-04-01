# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140401190626) do

  create_table "users", force: true do |t|
    t.text     "var1"
    t.text     "var2"
    t.text     "var3"
    t.text     "var4"
    t.text     "var5"
    t.text     "var6"
    t.text     "var7"
    t.text     "var8"
    t.text     "var9"
    t.text     "var10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
