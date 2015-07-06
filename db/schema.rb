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

ActiveRecord::Schema.define(version: 20150703000825) do

  create_table "buisnesses", force: true do |t|
    t.integer  "user_id"
    t.integer  "catagory_id"
    t.string   "name",         limit: 100, null: false
    t.string   "email",        limit: 100, null: false
    t.string   "phone_number", limit: 14
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buisnesses", ["user_id"], name: "index_buisnesses_on_user_id", using: :btree

  create_table "catagories", force: true do |t|
    t.string   "name",        limit: 20, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_ratings", id: false, force: true do |t|
    t.integer  "review_id"
    t.integer  "user_id"
    t.integer  "rating",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "review_ratings", ["review_id"], name: "index_review_ratings_on_review_id", using: :btree
  add_index "review_ratings", ["user_id"], name: "index_review_ratings_on_user_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "commercial_entity_id"
    t.integer  "rating",               null: false
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["commercial_entity_id"], name: "index_reviews_on_commercial_entity_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",     limit: 20, null: false
    t.string   "password",     limit: 20, null: false
    t.string   "first_name",   limit: 20, null: false
    t.string   "last_name",    limit: 20, null: false
    t.string   "email",                   null: false
    t.string   "phone_number", limit: 14
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
