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

ActiveRecord::Schema.define(version: 20160210230611) do

  create_table "common_codes", primary_key: "common_code_id", force: :cascade do |t|
    t.string   "main_id"
    t.string   "detail_id"
    t.string   "code_name"
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

  create_table "members", primary_key: "member_id", force: :cascade do |t|
    t.string   "name"
    t.integer  "party_id"
    t.integer  "region_id"
    t.string   "location"
    t.string   "rank"
    t.string   "department"
    t.string   "address"
    t.string   "email"
    t.string   "homepage"
    t.string   "birth"
    t.string   "career"
    t.string   "military"
    t.string   "crime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
