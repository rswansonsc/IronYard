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

ActiveRecord::Schema.define(version: 20140509211806) do

  create_table "assignments", force: true do |t|
    t.string   "name_a"
    t.string   "descripion_a"
    t.string   "links_a"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  create_table "comments", force: true do |t|
    t.date     "date_c"
    t.time     "time_c"
    t.string   "links_c"
    t.text     "comment_detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commentable_id"
    t.string   "commentable_type"
  end

  create_table "courses", force: true do |t|
    t.string   "name_course"
    t.string   "description_course"
    t.string   "links_course"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "locations", force: true do |t|
    t.string   "name_l"
    t.string   "description_l"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", force: true do |t|
    t.string   "name_s"
    t.string   "descripion_s"
    t.string   "links_s"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
