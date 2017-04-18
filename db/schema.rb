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

ActiveRecord::Schema.define(version: 20170418205154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string   "type"
    t.string   "cutting"
    t.string   "size"
    t.string   "weight"
    t.string   "number_bales"
    t.string   "sale_choice"
    t.boolean  "take_all"
    t.boolean  "loading"
    t.boolean  "hauling"
    t.string   "terms"
    t.string   "buy_now"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "rain"
    t.boolean  "tarped"
    t.boolean  "tested"
    t.integer  "user_id"
    t.string   "legal_check"
    t.string   "comments"
    t.string   "bid"
    t.string   "test_one"
    t.string   "test_ttwo"
    t.string   "test_three"
    t.string   "test_four"
    t.string   "test_five"
    t.string   "tester"
    t.boolean  "active"
    t.datetime "auction_end"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "products", "users"
end
