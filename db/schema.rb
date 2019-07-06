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

ActiveRecord::Schema.define(version: 2019_06_29_173809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books_lookups", force: :cascade do |t|
    t.integer "book_number"
    t.string "arabic_name"
    t.string "english_name"
  end

  create_table "father_commentaries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "english_commentary"
    t.text "arabic_commentary"
    t.text "searchable_english_commentary"
    t.text "searchable_arabic_commentary"
    t.integer "father_id"
  end

  create_table "father_commentaries_verses", id: false, force: :cascade do |t|
    t.bigint "verse_id", null: false
    t.bigint "father_commentary_id", null: false
    t.index ["verse_id", "father_commentary_id"], name: "index_on_verse_id_and_father_commentary_id", unique: true
  end

  create_table "fathers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "english_name"
    t.string "arabic_name"
    t.string "arabic_wikipedia"
    t.string "english_wikipedia"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "hashed_password"
    t.string "role"
    t.string "password"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "arabic_text"
    t.string "english_text"
    t.string "searchable_arabic"
    t.string "searchable_english"
    t.integer "verse_no"
    t.integer "chapter_no"
    t.integer "book_no"
  end

end
