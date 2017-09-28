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

ActiveRecord::Schema.define(version: 20170902075317) do

  create_table "books", force: :cascade do |t|
    t.string   "Name",       limit: 255
    t.string   "Subject",    limit: 255
    t.string   "Quantity",   limit: 255
    t.string   "Class",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "four_wheels_id", limit: 255
    t.string   "Car Name",       limit: 255
    t.boolean  "Visibile",                   default: false
    t.integer  "Position",       limit: 4
    t.integer  "Car Model",      limit: 4
    t.string   "Car Country",    limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "cars", ["four_wheels_id"], name: "index_cars_on_four_wheels_id", using: :btree

  create_table "four_wheels", force: :cascade do |t|
    t.string   "vechicals_id",     limit: 255
    t.string   "Four Wheels Name", limit: 255
    t.boolean  "Visible",                      default: false
    t.integer  "Position",         limit: 4
    t.string   "permalink",        limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "four_wheels", ["permalink"], name: "index_four_wheels_on_permalink", using: :btree
  add_index "four_wheels", ["vechicals_id"], name: "index_four_wheels_on_vechicals_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "subject_id", limit: 255
    t.string   "Pages Name", limit: 255
    t.string   "Permalink",  limit: 255
    t.integer  "Position",   limit: 4
    t.boolean  "Visible"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pages", ["Permalink"], name: "index_pages_on_Permalink", using: :btree
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "registers", force: :cascade do |t|
    t.string   "Name",       limit: 255
    t.string   "Subject",    limit: 255
    t.string   "Quantity",   limit: 255
    t.string   "Class",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "page_id",      limit: 255
    t.string   "Section Name", limit: 255
    t.integer  "Position",     limit: 4
    t.boolean  "Visible"
    t.string   "Content Type", limit: 255
    t.text     "Content",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "Name",       limit: 255
    t.integer  "Position",   limit: 4
    t.boolean  "Visible"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trainer_models", force: :cascade do |t|
    t.integer  "first_name",      limit: 3
    t.string   "last_name",       limit: 255
    t.string   "hashed_password", limit: 30,               null: false
    t.string   "email",           limit: 255, default: ""
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "trainer_name",    limit: 30
  end

  create_table "vechicals", force: :cascade do |t|
    t.string   "Vechical Name", limit: 255
    t.boolean  "Visible",                   default: false
    t.integer  "Position",      limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

end
