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

ActiveRecord::Schema.define(version: 2018_09_08_215443) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.string "image"
    t.string "brand_link"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "apartment"
    t.string "street_name"
    t.string "city"
    t.string "zipcode"
    t.string "phone_number"
    t.string "product1"
    t.string "size1"
    t.string "product2"
    t.string "size2"
    t.string "product3"
    t.string "size3"
    t.string "product4"
    t.string "size4"
    t.string "product5"
    t.string "size5"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "status_message", default: "Order Received. Awaiting Confirmation"
    t.string "status_icon", default: "envelope-open"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "name"
    t.string "image"
  end

end
