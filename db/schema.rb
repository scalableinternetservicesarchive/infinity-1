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

ActiveRecord::Schema.define(version: 20151106071752) do

  create_table "blog_comments", force: :cascade do |t|
    t.integer  "blog_id",    limit: 4
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "blog_comments", ["blog_id"], name: "index_blog_comments_on_blog_id", using: :btree

  create_table "blogs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.string   "city_name",  limit: 255
    t.string   "author",     limit: 255
    t.string   "link",       limit: 255
    t.string   "picture",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "blogs_categories", id: false, force: :cascade do |t|
    t.integer "blog_id",     limit: 4, null: false
    t.integer "category_id", limit: 4, null: false
  end

  add_index "blogs_categories", ["blog_id", "category_id"], name: "index_blogs_categories_on_blog_id_and_category_id", using: :btree
  add_index "blogs_categories", ["category_id", "blog_id"], name: "index_blogs_categories_on_category_id_and_blog_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories_notes", id: false, force: :cascade do |t|
    t.integer "note_id",     limit: 4, null: false
    t.integer "category_id", limit: 4, null: false
  end

  add_index "categories_notes", ["category_id", "note_id"], name: "index_categories_notes_on_category_id_and_note_id", using: :btree
  add_index "categories_notes", ["note_id", "category_id"], name: "index_categories_notes_on_note_id_and_category_id", using: :btree

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "user_id",     limit: 4, null: false
    t.integer "category_id", limit: 4, null: false
  end

  add_index "categories_users", ["category_id", "user_id"], name: "index_categories_users_on_category_id_and_user_id", using: :btree
  add_index "categories_users", ["user_id", "category_id"], name: "index_categories_users_on_user_id_and_category_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.string   "city_desc",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "note_id",    limit: 4
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["note_id"], name: "index_comments_on_note_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "interests",              limit: 255
    t.datetime "date_of_birth"
    t.boolean  "is_female",                          default: false
    t.string   "quote",                  limit: 255
    t.string   "picture",                limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "blog_comments", "blogs"
  add_foreign_key "comments", "notes"
end
