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

ActiveRecord::Schema.define(version: 20140401144520) do

  create_table "sentences", force: true do |t|
    t.integer  "template_id"
    t.integer  "variable_id"
    t.text     "sentence_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.text     "sentence_1"
    t.text     "sentence_2"
    t.text     "sentence_3"
    t.text     "sentence_4"
    t.text     "sentence_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variables", force: true do |t|
    t.text     "variable_1_text"
    t.text     "variable_2_text"
    t.text     "variable_3_text"
    t.text     "variable_4_text"
    t.text     "variable_5_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
