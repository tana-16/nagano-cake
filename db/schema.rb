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

ActiveRecord::Schema.define(version: 2021_08_15_035728) do

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adres", force: :cascade do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.integer "item_count"
    t.integer "item_price"
    t.integer "production_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "client_id"
    t.integer "item_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "last_name"
    t.string "first_neme"
    t.string "kana_last_name"
    t.string "kana_first_neme"
    t.string "email"
    t.string "encrypted_password"
    t.string "postal_code"
    t.string "address"
    t.string "telephone_number"
    t.integer "user_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "genre_id"
    t.string "item_name"
    t.integer "tax_out_price"
    t.string "image_id"
    t.text "explanation"
    t.integer "sale_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "item_id"
    t.string "shipping_address"
    t.string "shipping_name"
    t.string "shipping_postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "client_ID"
    t.string "shipping_postal_code"
    t.string "shipping_address"
    t.string "shipping_name"
    t.integer "postage"
    t.string "payment_method"
    t.integer "total_price"
    t.integer "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end