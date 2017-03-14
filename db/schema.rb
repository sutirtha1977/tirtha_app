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

ActiveRecord::Schema.define(version: 20170313021106) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.string   "password_digest"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["username"], name: "index_admin_users_on_username"
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name",                                                null: false
    t.string   "short_desc"
    t.text     "long_desc"
    t.boolean  "visible",                             default: false
    t.decimal  "orig_price", precision: 12, scale: 2, default: "0.0"
    t.decimal  "curr_price", precision: 12, scale: 2, default: "0.0"
    t.string   "image_loc"
    t.integer  "position"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["product_id"], name: "index_listings_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "description"
    t.string   "category"
    t.string   "icon_path"
    t.integer  "position"
    t.boolean  "visible",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "first_name",  limit: 25
    t.string   "last_name",   limit: 50
    t.string   "title"
    t.string   "email",       limit: 100, default: "", null: false
    t.text     "description"
    t.string   "cell_phone"
    t.string   "google"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.integer  "position"
    t.string   "avatar_loc"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
