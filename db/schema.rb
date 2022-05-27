
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
