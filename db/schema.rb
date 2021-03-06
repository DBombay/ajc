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

ActiveRecord::Schema.define(version: 20180328161048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title", null: false
    t.boolean "completed", default: false
    t.text "client_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entry_id"
    t.bigint "picture_id"
    t.index ["entry_id"], name: "index_blogs_on_entry_id"
    t.index ["picture_id"], name: "index_blogs_on_picture_id"
  end

  create_table "entries", force: :cascade do |t|
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "picture_id"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_entries_on_blog_id"
    t.index ["picture_id"], name: "index_entries_on_picture_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entry_id"
    t.index ["entry_id"], name: "index_pictures_on_entry_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

  add_foreign_key "blogs", "entries"
  add_foreign_key "blogs", "pictures"
  add_foreign_key "entries", "blogs"
  add_foreign_key "entries", "pictures"
  add_foreign_key "pictures", "entries"
end
