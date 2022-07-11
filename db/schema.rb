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

ActiveRecord::Schema.define(version: 2022_07_10_054735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.integer "gates"
    t.boolean "international"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "seat"
    t.boolean "first_class"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "plane_id"
    t.index ["plane_id"], name: "index_passengers_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.integer "capacity"
    t.string "destination"
    t.boolean "boarded"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "airport_id"
    t.index ["airport_id"], name: "index_planes_on_airport_id"
  end

  add_foreign_key "passengers", "planes"
  add_foreign_key "planes", "airports"
end
