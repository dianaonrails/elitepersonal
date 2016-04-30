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

ActiveRecord::Schema.define(version: 20160425111312) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "applications", force: :cascade do |t|
    t.string   "state"
    t.integer  "candidate_id"
    t.integer  "vacancy_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "assistance_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "dry_wet"
    t.boolean  "washing_ironing"
    t.boolean  "vip"
    t.boolean  "cooking"
    t.boolean  "systems"
    t.boolean  "driving"
    t.boolean  "pool"
    t.boolean  "small_repairs"
    t.boolean  "cares"
    t.boolean  "garden"
    t.boolean  "plants"
    t.boolean  "pet_grooming"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "candidate_id"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
    t.string   "en"
    t.string   "ru"
  end

  create_table "available_works", force: :cascade do |t|
    t.integer  "candidate_id"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
    t.string   "en"
    t.string   "ru"
  end

  create_table "babysitter_questions", force: :cascade do |t|
    t.string   "question"
    t.boolean  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidate_languages", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "language_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "address"
    t.string   "mobile"
    t.string   "email"
    t.string   "citizenship"
    t.boolean  "start"
    t.text     "statment"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "photo"
    t.string   "cv"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "passport"
    t.string   "foreign_passport"
    t.string   "marital_status"
    t.integer  "children"
    t.string   "sign"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nationality"
    t.boolean  "smoker"
    t.boolean  "driving_licence"
    t.boolean  "car"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "category_id"
    t.boolean  "interview"
    t.text     "description"
    t.integer  "level_education_id"
    t.string   "years_experience"
    t.string   "salary"
    t.string   "country"
    t.string   "city"
    t.string   "password"
  end

  add_index "candidates", ["email"], name: "index_candidates_on_email", unique: true
  add_index "candidates", ["reset_password_token"], name: "index_candidates_on_reset_password_token", unique: true

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "candidate_id"
    t.string   "en"
    t.string   "ru"
  end

  create_table "category_question_candidates", force: :cascade do |t|
    t.integer  "category_question_id"
    t.integer  "candidate_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "category_questions", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "question"
    t.boolean  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "questions_ru"
    t.string   "question_en"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "client_languages", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "client_requests", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "phone"
    t.integer  "category_id"
    t.text     "message"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "client_id"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.integer  "age_minimum"
    t.integer  "age_max"
    t.string   "marital_status"
    t.string   "nationality"
    t.string   "citizenship"
    t.boolean  "smoker"
    t.string   "zodiac_sign"
    t.boolean  "driving_license"
    t.boolean  "car"
    t.integer  "level_education_id"
    t.string   "years_experience"
    t.integer  "salary"
  end

  create_table "client_resquest_languages", force: :cascade do |t|
    t.integer  "client_request_id"
    t.integer  "language_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "controllers", force: :cascade do |t|
    t.string   "Client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cooker_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "family"
    t.boolean  "restaurants"
    t.boolean  "purchase"
    t.boolean  "menu"
    t.boolean  "banquets"
    t.boolean  "during_banquet"
    t.boolean  "kids"
    t.boolean  "diets"
    t.text     "knowledge_kitchen"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
  end

  create_table "driver_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "personal_driver"
    t.boolean  "family_driver"
    t.boolean  "children"
    t.boolean  "knowledge_road"
    t.boolean  "confident"
    t.boolean  "washing"
    t.boolean  "luxury_car"
    t.boolean  "weapons_bodyguard"
    t.boolean  "trips"
    t.boolean  "care_house"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
  end

  create_table "education_infos", force: :cascade do |t|
    t.integer  "candidate_id"
    t.string   "level"
    t.text     "history"
    t.text     "languages"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "general_translations", force: :cascade do |t|
    t.string   "label"
    t.text     "en"
    t.text     "ru"
    t.string   "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "governess_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "five_to_seven"
    t.boolean  "seven_to_ten"
    t.boolean  "cooking"
    t.boolean  "school"
    t.boolean  "assistant"
    t.boolean  "foreign_languages"
    t.boolean  "several_children"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
  end

  create_table "housekeeper_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "dry_wet"
    t.boolean  "washing"
    t.boolean  "vip"
    t.boolean  "furniture"
    t.boolean  "cooking"
    t.boolean  "plants_animals"
    t.boolean  "appliances"
    t.boolean  "large_areas"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "client_request_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.integer  "client_request_id"
    t.integer  "candidate_id"
    t.date     "interview_date"
    t.string   "address"
    t.string   "contact"
    t.text     "comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "hour"
    t.string   "phone_number"
    t.integer  "client_id"
    t.string   "status"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legal_works", force: :cascade do |t|
    t.integer  "candidate_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "en"
    t.string   "ru"
  end

  create_table "level_educations", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nanny_questions", force: :cascade do |t|
    t.boolean  "cooking"
    t.boolean  "walking"
    t.boolean  "cleaning"
    t.boolean  "education"
    t.boolean  "trips"
    t.boolean  "several"
    t.boolean  "household_help"
    t.text     "education_techniques"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "birth_to_one"
    t.boolean  "one_to_three"
    t.boolean  "three_to_six"
    t.boolean  "regime"
    t.boolean  "work_several"
    t.integer  "client_request_id"
    t.integer  "client_id"
    t.integer  "candidate_id"
    t.integer  "category_id"
  end

  create_table "nurse_questions", force: :cascade do |t|
    t.integer  "candidate_id"
    t.boolean  "older_people"
    t.boolean  "ambulant_patients"
    t.boolean  "immobile_patients"
    t.boolean  "measurements"
    t.boolean  "intramuscular_injection"
    t.boolean  "intravenous_injection"
    t.boolean  "procedures"
    t.boolean  "cleaning_cooking"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "client_request_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vacancies", force: :cascade do |t|
    t.string   "title"
    t.string   "country"
    t.string   "city"
    t.string   "salary"
    t.text     "description"
    t.text     "requirements"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "category_id"
  end

  create_table "work_infos", force: :cascade do |t|
    t.integer  "category_id"
    t.text     "sectors_experience"
    t.string   "years_experience"
    t.string   "current_job"
    t.string   "last_employer"
    t.text     "key_skills"
    t.string   "salary"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "candidate_id"
  end

end
