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

ActiveRecord::Schema.define(version: 2020_05_03_132837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menuitems", force: :cascade do |t|
    t.integer "menu_id"
    t.string "item_name"
    t.string "item_description"
    t.decimal "item_price"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
  end

  create_table "orderitems", force: :cascade do |t|
    t.integer "order_id"
    t.integer "menu_item_id"
    t.string "menu_item_name"
    t.integer "menu_item_quantity"
    t.decimal "menu_item_price"
    t.boolean "in_cart"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer "user_id"
    t.datetime "delivered_at"
    t.decimal "total"
    t.string "status"
    t.boolean "walkin_customer"
  end

  create_table "todos", force: :cascade do |t|
    t.text "todo_text"
    t.date "due_date"
    t.boolean "completed"
    t.bigint "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
  end

  create_table "users_tables", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
