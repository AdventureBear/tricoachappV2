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

ActiveRecord::Schema.define(version: 20140421021555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "race_registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "race_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_registrations", ["race_id"], name: "index_race_registrations_on_race_id", using: :btree
  add_index "race_registrations", ["user_id"], name: "index_race_registrations_on_user_id", using: :btree

  create_table "races", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.text     "race_category"
    t.text     "city"
    t.text     "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "zip_code"
    t.date     "race_date"
    t.text     "image_url"
    t.text     "race_url"
    t.decimal  "swim_distance"
    t.text     "swim_units"
    t.decimal  "bike_distance"
    t.text     "bike_units"
    t.decimal  "run_distance"
    t.text     "run_units"
    t.decimal  "race_distance_total"
    t.decimal  "price"
    t.text     "comments"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "username"
    t.text     "first_name"
    t.text     "last_name"
    t.boolean  "admin",                  default: false
    t.boolean  "head_coach",             default: false
    t.boolean  "coach",                  default: false
    t.boolean  "athlete",                default: true
    t.text     "img_file_name"
    t.date     "birthdate"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
