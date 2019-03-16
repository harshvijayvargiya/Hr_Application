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

ActiveRecord::Schema.define(version: 2019_03_12_080807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "gender"
    t.date "date_of_birth"
    t.date "date_of_joining"
    t.string "marital_status"
    t.string "status"
    t.string "probation_duration"
    t.date "confirmaton_date"
    t.string "personal_email"
    t.string "mobile_number"
    t.string "alternate_mobile_number"
    t.string "blood_group"
    t.text "about"
    t.string "profile_picture"
    t.string "present_address"
    t.string "permanent_address"
    t.string "nationality"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "is_international_employee"
    t.boolean "is_physically_challenged"
    t.boolean "is_director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "previous_work_details", force: :cascade do |t|
    t.string "company_name"
    t.string "designation"
    t.date "joining_date"
    t.date "releiving_date"
    t.integer "experience_in_years"
    t.integer "experience_in_months"
    t.string "nature_of_work"
    t.string "role_at_work"
    t.text "reason_for_leaving"
    t.string "company_address"
    t.string "company_website"
    t.string "company_contact"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_previous_work_details_on_employee_id"
  end

  create_table "relatives", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "gender"
    t.string "blood_group"
    t.string "relation"
    t.string "profession"
    t.string "nationality"
    t.string "address"
    t.string "contact"
    t.text "remarks"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_relatives_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "contact"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "previous_work_details", "employees"
  add_foreign_key "relatives", "employees"
end
