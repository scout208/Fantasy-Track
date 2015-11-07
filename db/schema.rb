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

ActiveRecord::Schema.define(version: 20151107193113) do

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.integer  "meet"       #this is a foreign key to the meet primary key
    t.integer  "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meets", force: :cascade do |t|
    t.string   "meet_name"
    t.string   "location_city"
    t.string   "location_country"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id"
    t.string   "email"
    t.string   "session_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "password_digest"
  end

end
