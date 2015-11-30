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

ActiveRecord::Schema.define(version: 20151130185642) do

  create_table "athletes", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date   "birth_date"
    t.string "country"
    t.string "notes"
  end

  create_table "event_entrants", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.integer  "meet_id"
    t.integer  "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jump_results", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.boolean  "pr"
    t.boolean  "nr"
    t.boolean  "wr"
    t.integer  "best_of_round"
    t.integer  "place"
    t.decimal  "best_jump"
    t.decimal  "jump_1"
    t.decimal  "jump_2"
    t.decimal  "jump_3"
    t.decimal  "jump_4"
    t.decimal  "jump_5"
    t.decimal  "jump_6"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "league_members", force: :cascade do |t|
    t.integer  "league_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaguemembers", force: :cascade do |t|
    t.integer "league_id"
    t.integer "user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.integer "creator_id"
    t.string  "league_name"
    t.string  "pass_code"
  end

  create_table "meets", force: :cascade do |t|
    t.string   "meet_name"
    t.string   "location_city"
    t.string   "location_country"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "released"
  end

  create_table "mid_results", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.boolean  "pr"
    t.boolean  "nr"
    t.boolean  "wr"
    t.integer  "split_leader"
    t.integer  "place"
    t.decimal  "time_seconds"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sessions", force: :cascade do |t|
  end

  create_table "sprint_results", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.boolean  "pr"
    t.boolean  "nr"
    t.boolean  "wr"
    t.boolean  "fastest_start"
    t.integer  "place"
    t.decimal  "time_seconds"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "throw_results", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.boolean  "pr"
    t.boolean  "nr"
    t.boolean  "wr"
    t.integer  "best_of_round"
    t.integer  "place"
    t.decimal  "best_throw"
    t.decimal  "throw_1"
    t.decimal  "throw_2"
    t.decimal  "throw_3"
    t.decimal  "throw_4"
    t.decimal  "throw_5"
    t.decimal  "throw_6"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id"
    t.string   "email"
    t.string   "session_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
  end

end
