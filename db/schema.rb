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

ActiveRecord::Schema.define(version: 2022_01_07_001357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "typeAddress", null: false
    t.string "status", null: false
    t.string "entity", null: false
    t.string "numberAndStreet", null: false
    t.string "suiteOrApartment", null: false
    t.string "city", null: false
    t.string "postalCode", null: false
    t.string "country", null: false
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", force: :cascade do |t|
    t.bigint "buildingId", null: false
    t.string "types", null: false
    t.string "status", null: false
    t.integer "employeeId", null: false
    t.datetime "dateCommissioning", null: false
    t.datetime "dateLastInspection", null: false
    t.string "certificateOperations", null: false
    t.string "information", null: false
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_details", force: :cascade do |t|
    t.bigint "buildingId", null: false
    t.string "informationKey", null: false
    t.string "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.bigint "customerId", null: false
    t.bigint "addressId", null: false
    t.string "fullNameAdministrator", null: false
    t.string "emailAdministrator", null: false
    t.string "phoneNumberAdministrator", null: false
    t.string "fullNameTechnicalContact", null: false
    t.string "emailTechnicalContact", null: false
    t.string "phoneTechnicalContact", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", force: :cascade do |t|
    t.bigint "batteryId", null: false
    t.string "types", null: false
    t.string "numberFloorServed", null: false
    t.string "status", null: false
    t.string "information", null: false
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "userId", null: false
    t.datetime "dateCreation", null: false
    t.string "compagnyName", null: false
    t.bigint "addressId", null: false
    t.string "fullName", null: false
    t.string "contactPhone", null: false
    t.string "email", null: false
    t.string "description", null: false
    t.string "fullNameTechnicalAuthority", null: false
    t.string "technicalAuthorityPhone", null: false
    t.string "technicalAuthorityEmail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elevators", force: :cascade do |t|
    t.bigint "columnId", null: false
    t.string "serialNumber", null: false
    t.string "model", null: false
    t.string "types", null: false
    t.string "status", null: false
    t.datetime "dateCommissioning", null: false
    t.datetime "dateLastInspection", null: false
    t.string "certificateOperations", null: false
    t.string "information", null: false
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", id: :serial, force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "title", null: false
    t.string "email", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interventions", force: :cascade do |t|
    t.integer "employee_id"
    t.bigint "customer_id"
    t.bigint "building_id"
    t.bigint "batterie_id"
    t.bigint "column_id"
    t.bigint "elevator_id"
    t.date "start_date"
    t.date "end_date"
    t.string "result", default: "Incomplete"
    t.text "report"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batterie_id"], name: "index_interventions_on_batterie_id"
    t.index ["building_id"], name: "index_interventions_on_building_id"
    t.index ["column_id"], name: "index_interventions_on_column_id"
    t.index ["customer_id"], name: "index_interventions_on_customer_id"
    t.index ["elevator_id"], name: "index_interventions_on_elevator_id"
    t.index ["employee_id"], name: "index_interventions_on_employee_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "fullNameContact", null: false
    t.string "compagnyName", null: false
    t.string "email", null: false
    t.string "phoneNumber", null: false
    t.string "nameProject", null: false
    t.string "descriptionProject", null: false
    t.string "department", null: false
    t.string "message", null: false
    t.binary "file", null: false
    t.datetime "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_ids", force: :cascade do |t|
    t.string "profile_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", id: :serial, force: :cascade do |t|
    t.string "type_building", null: false
    t.integer "numApartment"
    t.integer "numFloor"
    t.integer "numElevator"
    t.integer "numOccupant"
    t.string "compagnyName"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batteries", "buildings", column: "buildingId"
  add_foreign_key "batteries", "employees", column: "employeeId"
  add_foreign_key "building_details", "buildings", column: "buildingId"
  add_foreign_key "buildings", "addresses", column: "addressId"
  add_foreign_key "buildings", "customers", column: "customerId"
  add_foreign_key "columns", "batteries", column: "batteryId"
  add_foreign_key "customers", "addresses", column: "addressId"
  add_foreign_key "customers", "users", column: "userId"
  add_foreign_key "elevators", "columns", column: "columnId"
  add_foreign_key "employees", "users"
  add_foreign_key "interventions", "batteries", column: "batterie_id"
  add_foreign_key "interventions", "buildings"
  add_foreign_key "interventions", "columns"
  add_foreign_key "interventions", "customers"
  add_foreign_key "interventions", "elevators"
  add_foreign_key "interventions", "employees"
end
