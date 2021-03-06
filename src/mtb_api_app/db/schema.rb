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

ActiveRecord::Schema.define(version: 2019_05_25_190128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.bigint "trail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trail_id"], name: "index_sections_on_trail_id"
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "pic_url"
    t.float "lat"
    t.float "lon"
    t.integer "light_rain_wait"
    t.integer "heavy_rain_wait"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trails_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sections", "trails"
  add_foreign_key "trails", "users"
end
