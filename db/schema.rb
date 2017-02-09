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

ActiveRecord::Schema.define(version: 20170209015408) do

  create_table "educations", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.date     "year_start"
    t.date     "year_end"
    t.text     "specification"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.text     "profession"
    t.date     "birth_at"
    t.text     "birth_place"
    t.date     "date_admission"
    t.decimal  "salary"
    t.integer  "number_id"
    t.string   "base_belong"
    t.string   "civil_status"
    t.text     "address"
    t.string   "blood_type"
    t.string   "emergency_contact_name"
    t.integer  "emergency_contact_number"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "work_id"
    t.string   "position"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.text     "requierements"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "work_places", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.decimal  "years"
    t.text     "reason_stop"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
