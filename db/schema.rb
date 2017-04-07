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

ActiveRecord::Schema.define(version: 20170305152059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_keywords", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "synonym"
  end

  create_table "keywords_pictures", id: false, force: :cascade do |t|
    t.integer "keyword_id", null: false
    t.integer "picture_id", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "picture_id"
    t.string   "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "keyword_id"
  end

  add_index "websites", ["keyword_id"], name: "index_websites_on_keyword_id", using: :btree

  add_foreign_key "websites", "keywords"
end
