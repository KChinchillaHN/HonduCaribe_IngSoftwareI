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

ActiveRecord::Schema.define(version: 20170223010354) do

  create_table "educations", force: :cascade do |t|
    t.string   "school_name"
    t.datetime "year_start"
    t.datetime "year_end"
    t.boolean  "completed"
    t.text     "title_description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "employee_id"
  end

  add_index "educations", ["employee_id"], name: "index_educations_on_employee_id"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.text     "profession"
    t.date     "birth_at"
    t.text     "birth_place"
    t.date     "date_admission"
    t.decimal  "salary"
    t.string   "base_belong"
    t.string   "civil_status"
    t.text     "address"
    t.string   "blood_type"
    t.string   "emergency_contact_name"
    t.integer  "emergency_contact_number"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "work_id"
    t.string   "last_work"
    t.string   "email"
    t.string   "RAP_code"
    t.integer  "cellphone"
    t.integer  "bank_account"
    t.string   "contract_type"
    t.string   "gender"
    t.boolean  "employee_status"
    t.string   "supression_motive"
    t.datetime "supression_date"
    t.string   "identity_number"
    t.integer  "position_id"
  end

  add_index "employees", ["position_id"], name: "index_employees_on_position_id"

  create_table "habilities", force: :cascade do |t|
    t.string   "hability"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  add_index "habilities", ["employee_id"], name: "index_habilities_on_employee_id"

  create_table "positions", force: :cascade do |t|
    t.text     "name_position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "work_structure_id"
  end

  add_index "positions", ["work_structure_id"], name: "index_positions_on_work_structure_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "work_exps", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "year_start"
    t.datetime "year_end"
    t.text     "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "employee_id"
  end

  add_index "work_exps", ["employee_id"], name: "index_work_exps_on_employee_id"

  create_table "work_structures", force: :cascade do |t|
    t.string   "department"
    t.string   "area"
    t.string   "sub_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
