# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151030185537) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "category_id", null: false
  end

  add_index "categories_users", ["category_id", "user_id"], name: "index_categories_users_on_category_id_and_user_id"
  add_index "categories_users", ["user_id", "category_id"], name: "index_categories_users_on_user_id_and_category_id"

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.string   "city_desc",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end


  create_table "footprints", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.string   "title",      limit: 255
    t.integer  "uid",        limit: 4
    t.text     "content",    limit: 65535
    t.string   "tags",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "interests"
    t.datetime "date_of_birth"
    t.boolean  "is_female",              default: false
    t.string   "picture"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
