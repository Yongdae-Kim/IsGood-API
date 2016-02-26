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

ActiveRecord::Schema.define(version: 20160218114036) do

  create_table "avatars", primary_key: "avatar_id", force: :cascade do |t|
    t.string   "nickname"
    t.integer  "reviews_count",  default: 0
    t.integer  "messages_count", default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "common_codes", primary_key: "common_code_id", force: :cascade do |t|
    t.string   "main_id"
    t.integer  "detail_id"
    t.string   "code_name"
    t.integer  "sort_set"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", primary_key: "image_id", force: :cascade do |t|
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "image_created_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "locations", primary_key: "location_id", force: :cascade do |t|
    t.string   "si"
    t.string   "gu"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_elements", primary_key: "member_element_id", force: :cascade do |t|
    t.integer  "item1_id"
    t.integer  "item2_id"
    t.integer  "item3_id"
    t.integer  "item4_id"
    t.integer  "item5_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_member_elements_on_member_id"
  end

  create_table "member_stats", primary_key: "member_stat_id", force: :cascade do |t|
    t.float    "item1_point"
    t.float    "item2_point"
    t.float    "item3_point"
    t.float    "item4_point"
    t.float    "item5_point"
    t.integer  "member_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["member_id"], name: "index_member_stats_on_member_id"
  end

  create_table "member_works", force: :cascade do |t|
    t.text     "main_session_attendance"
    t.text     "sub_session_attendance"
    t.text     "bill_proposal"
    t.integer  "member_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["member_id"], name: "index_member_works_on_member_id"
  end

  create_table "members", primary_key: "member_id", force: :cascade do |t|
    t.string   "name"
    t.integer  "party_id"
    t.integer  "region_id"
    t.string   "constituency"
    t.string   "rank"
    t.string   "department"
    t.string   "address"
    t.string   "email"
    t.string   "homepage"
    t.string   "birth"
    t.string   "career"
    t.string   "military"
    t.string   "crime"
    t.integer  "location_id"
    t.integer  "reviews_count",       default: 0
    t.float    "reviews_grade_total", default: 0.0
    t.integer  "member_stats_count",  default: 0
    t.integer  "item1_point_total",   default: 0
    t.integer  "item2_point_total",   default: 0
    t.integer  "item3_point_total",   default: 0
    t.integer  "item4_point_total",   default: 0
    t.integer  "item5_point_total",   default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["location_id"], name: "index_members_on_location_id"
  end

  create_table "messages", primary_key: "message_id", force: :cascade do |t|
    t.text     "content"
    t.integer  "avatar_id"
    t.integer  "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avatar_id"], name: "index_messages_on_avatar_id"
    t.index ["review_id"], name: "index_messages_on_review_id"
  end

  create_table "reviews", primary_key: "review_id", force: :cascade do |t|
    t.text     "content"
    t.float    "grade",          default: 3.0
    t.integer  "messages_count", default: 0
    t.integer  "member_id"
    t.integer  "avatar_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["avatar_id"], name: "index_reviews_on_avatar_id"
    t.index ["member_id"], name: "index_reviews_on_member_id"
  end

end
