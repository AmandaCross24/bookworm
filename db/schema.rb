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

ActiveRecord::Schema.define(version: 20170725125525) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "lexile_level"
    t.string   "guided_reading_level"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "current_lexile_level"
    t.string   "current_guided_reading_level"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "parent"
    t.string   "students_first_name"
    t.string   "students_last_name"
    t.string   "teacher_name"
  end

  add_index "users", ["students_first_name"], name: "index_users_on_students_first_name"
  add_index "users", ["students_last_name"], name: "index_users_on_students_last_name"

end
