# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_17_150143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.date "starting_date"
    t.string "status"
    t.date "ending_date"
    t.integer "total_price"
    t.bigint "user_id", null: false
    t.bigint "swimming_pool_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["swimming_pool_id"], name: "index_reservations_on_swimming_pool_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "swimming_pools", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.string "description"
    t.integer "price_per_day"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_swimming_pools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "swimming_pools"
  add_foreign_key "reservations", "users"
  add_foreign_key "swimming_pools", "users"
end
