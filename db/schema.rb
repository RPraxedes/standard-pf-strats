# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_16_113238) do
  create_table "data_centers", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_data_centers_on_region_id"
  end

  create_table "raids", force: :cascade do |t|
    t.string "name"
    t.integer "player_level"
    t.integer "item_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strategies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "raid_id"
    t.integer "data_center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_center_id"], name: "index_strategies_on_data_center_id"
    t.index ["raid_id"], name: "index_strategies_on_raid_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "user_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "data_centers", "regions"
  add_foreign_key "strategies", "data_centers"
  add_foreign_key "strategies", "raids"
end
