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

ActiveRecord::Schema.define(version: 20140402153532) do

  create_table "draft_variables", force: true do |t|
    t.integer  "draft_id"
    t.integer  "letter_id"
    t.integer  "user_id"
    t.integer  "variable_ordinal"
    t.string   "variable_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts", force: true do |t|
    t.integer  "letter_id"
    t.integer  "variable_ordinal"
    t.text     "variable_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "letters", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
