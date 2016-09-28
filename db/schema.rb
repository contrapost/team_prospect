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

ActiveRecord::Schema.define(version: 20160928200443) do

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bios", force: :cascade do |t|
    t.text     "paragraph"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "group_member_id"
  end

  create_table "educations", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.string   "institution_name"
    t.string   "field_of_study"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "group_member_id"
  end

  create_table "field_of_study_in_westerdals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "group_members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "field_of_study_in_westerdal_id"
  end

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "links", force: :cascade do |t|
    t.string   "link_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "group_member_id"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "photo_comment"
    t.string   "link"
  end

  create_table "news_paragraphs", force: :cascade do |t|
    t.text     "paragraph"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "news_id"
  end

  create_table "personal_texts", force: :cascade do |t|
    t.text     "paragraph"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "group_member_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "group_member_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.string   "company"
    t.string   "position"
    t.text     "optional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "group_member_id"
  end

end
