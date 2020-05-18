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

ActiveRecord::Schema.define(version: 2020_05_05_120804) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "automotive_part_details", force: :cascade do |t|
    t.integer "service_pack_id"
    t.integer "automotive_part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["automotive_part_id"], name: "index_automotive_part_details_on_automotive_part_id"
    t.index ["service_pack_id"], name: "index_automotive_part_details_on_service_pack_id"
  end

  create_table "automotive_parts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["car_id"], name: "index_automotive_parts_on_car_id"
  end

  create_table "basic_parameters", force: :cascade do |t|
    t.string "origin"
    t.integer "status"
    t.string "km_travel"
    t.integer "color_outside"
    t.integer "color_inside"
    t.integer "number_of_seats"
    t.string "engine"
    t.integer "fueling_system"
    t.integer "gear"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "Category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "basic_parameter_id"
    t.integer "technical_parameter_id"
    t.index ["Category_id"], name: "index_cars_on_Category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "member_cards", force: :cascade do |t|
    t.integer "member_lv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "register_advisories", force: :cascade do |t|
    t.string "number_phone"
    t.string "manufacturer"
    t.integer "status"
    t.integer "user_id"
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["staff_id"], name: "index_register_advisories_on_staff_id"
    t.index ["user_id"], name: "index_register_advisories_on_user_id"
  end

  create_table "schedule_maintenances", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "user_id"
    t.datetime "date"
    t.string "number_phone"
    t.string "car_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_register_id"
    t.index ["staff_id"], name: "index_schedule_maintenances_on_staff_id"
    t.index ["user_id"], name: "index_schedule_maintenances_on_user_id"
  end

  create_table "service_packs", force: :cascade do |t|
    t.string "name"
    t.text "desciption"
    t.float "price"
    t.float "price_parts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.boolean "status", default: true
    t.integer "parent_id"
  end

  create_table "service_registers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "service_pack_id"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "schedule_mantenance_id"
    t.index ["service_pack_id"], name: "index_service_registers_on_service_pack_id"
    t.index ["user_id"], name: "index_service_registers_on_user_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "staff_name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.integer "level"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technical_parameters", force: :cascade do |t|
    t.string "overall_dimensions_outside"
    t.string "ther_standard_long"
    t.string "float"
    t.string "minimum_rotation_radius"
    t.integer "max_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
  end

  create_table "user_pick_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "member_card_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
