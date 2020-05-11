
ActiveRecord::Schema.define(version: 2020_05_08_134553) do

  create_table "items", force: :cascade do |t|
    t.integer "market_id"
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "amount_available"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.boolean "is_open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
