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

ActiveRecord::Schema[7.0].define(version: 2022_05_26_221811) do
  create_table "credit_cards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "benefits"
    t.integer "annual_fee"
    t.string "welcome_bonus"
    t.string "apr"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_cards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "credit_card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"user\", \"credit_card\"", name: "index_favorite_cards_on_user_and_credit_card", unique: true
    t.index ["credit_card_id"], name: "index_favorite_cards_on_credit_card_id"
    t.index ["user_id"], name: "index_favorite_cards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorite_cards", "credit_cards"
  add_foreign_key "favorite_cards", "users"
end
