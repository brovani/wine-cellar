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

ActiveRecord::Schema.define(version: 2020_08_17_203929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bottles", force: :cascade do |t|
    t.bigint "storage_id", null: false
    t.bigint "case_id", null: false
    t.string "size"
    t.integer "number"
    t.string "rotation"
    t.string "photo"
    t.bigint "merchant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_bottles_on_case_id"
    t.index ["merchant_id"], name: "index_bottles_on_merchant_id"
    t.index ["storage_id"], name: "index_bottles_on_storage_id"
  end

  create_table "cases", force: :cascade do |t|
    t.bigint "storage_id", null: false
    t.integer "number"
    t.integer "bottles_per_case"
    t.string "rotation"
    t.bigint "merchant_id", null: false
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["merchant_id"], name: "index_cases_on_merchant_id"
    t.index ["storage_id"], name: "index_cases_on_storage_id"
  end

  create_table "geographies", force: :cascade do |t|
    t.string "country"
    t.string "region"
    t.string "subregion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "media", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "website"
    t.string "login"
    t.string "password"
    t.string "twitter"
    t.string "instagram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_media_on_user_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.string "login"
    t.string "password"
    t.string "twitter"
    t.string "instagram"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.string "website"
    t.string "twitter"
    t.string "instagram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "media_id", null: false
    t.bigint "wine_id", null: false
    t.string "rating"
    t.string "description"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["media_id"], name: "index_reviews_on_media_id"
    t.index ["wine_id"], name: "index_reviews_on_wine_id"
  end

  create_table "storages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "account_number"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.string "website"
    t.string "login"
    t.string "password"
    t.boolean "professional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_storages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vintages", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_id"], name: "index_vintages_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "color"
    t.string "type"
    t.string "lwin"
    t.bigint "producer_id", null: false
    t.bigint "geography_id", null: false
    t.bigint "case_id", null: false
    t.bigint "bottle_id", null: false
    t.string "twitter"
    t.string "instagram"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bottle_id"], name: "index_wines_on_bottle_id"
    t.index ["case_id"], name: "index_wines_on_case_id"
    t.index ["geography_id"], name: "index_wines_on_geography_id"
    t.index ["producer_id"], name: "index_wines_on_producer_id"
  end

  add_foreign_key "bottles", "cases"
  add_foreign_key "bottles", "merchants"
  add_foreign_key "bottles", "storages"
  add_foreign_key "cases", "merchants"
  add_foreign_key "cases", "storages"
  add_foreign_key "media", "users"
  add_foreign_key "reviews", "media", column: "media_id"
  add_foreign_key "reviews", "wines"
  add_foreign_key "storages", "users"
  add_foreign_key "vintages", "wines"
  add_foreign_key "wines", "bottles"
  add_foreign_key "wines", "cases"
  add_foreign_key "wines", "geographies"
  add_foreign_key "wines", "producers"
end
