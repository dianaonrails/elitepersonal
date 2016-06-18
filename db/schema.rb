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

ActiveRecord::Schema.define(version: 20160618144348) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "applications", force: :cascade do |t|
    t.string   "state",        limit: 255
    t.integer  "candidate_id", limit: 4
    t.integer  "vacancy_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "assistance_questions", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
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
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "client_request_id", limit: 4
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
    t.string   "description",       limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "client_request_id", limit: 4
    t.string   "en",                limit: 255
    t.string   "ru",                limit: 255
  end

  create_table "available_works", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
    t.string   "description",       limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "client_request_id", limit: 4
    t.string   "en",                limit: 255
    t.string   "ru",                limit: 255
  end

  create_table "babysitter_questions", force: :cascade do |t|
    t.string   "question",   limit: 255
    t.boolean  "value"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id",   limit: 4
    t.string   "bootsy_resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file",       limit: 255
    t.integer  "image_gallery_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidate_languages", force: :cascade do |t|
    t.integer  "candidate_id", limit: 4
    t.integer  "language_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "address",                limit: 255
    t.string   "mobile",                 limit: 255
    t.string   "email",                  limit: 255
    t.string   "citizenship",            limit: 255
    t.boolean  "start"
    t.text     "statment",               limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "photo",                  limit: 255
    t.string   "cv",                     limit: 255
    t.date     "birth_date"
    t.string   "gender",                 limit: 255
    t.string   "height",                 limit: 255
    t.string   "weight",                 limit: 255
    t.string   "passport",               limit: 255
    t.string   "foreign_passport",       limit: 255
    t.string   "marital_status",         limit: 255
    t.integer  "children",               limit: 4
    t.string   "sign",                   limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "nationality",            limit: 255
    t.boolean  "smoker"
    t.boolean  "driving_licence"
    t.boolean  "car"
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "category_id",            limit: 4
    t.boolean  "interview"
    t.text     "description",            limit: 65535
    t.integer  "level_education_id",     limit: 4
    t.string   "years_experience",       limit: 255
    t.string   "salary",                 limit: 255
    t.string   "country",                limit: 255
    t.string   "city",                   limit: 255
    t.string   "password",               limit: 255
    t.date     "date_start1"
    t.date     "date_end1"
    t.string   "employer1",              limit: 255
    t.text     "functions1",             limit: 65535
    t.date     "date_start2"
    t.date     "date_end2"
    t.string   "employer2",              limit: 255
    t.text     "functions2",             limit: 65535
  end

  add_index "candidates", ["email"], name: "index_candidates_on_email", unique: true, using: :btree
  add_index "candidates", ["reset_password_token"], name: "index_candidates_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "candidate_id", limit: 4
    t.string   "en",           limit: 255
    t.string   "ru",           limit: 255
  end

  create_table "category_question_candidates", force: :cascade do |t|
    t.integer  "category_question_id", limit: 4
    t.integer  "candidate_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "category_questions", force: :cascade do |t|
    t.integer  "category_id",            limit: 4
    t.string   "question",               limit: 255
    t.boolean  "value"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "candidate_id",           limit: 4
    t.text     "educational_techniques", limit: 65535
    t.boolean  "birth_to_one"
    t.boolean  "one_to_three"
    t.boolean  "three_to_six"
    t.boolean  "five_to_seven"
    t.boolean  "seven_to_ten"
    t.integer  "client_request_id",      limit: 4
    t.integer  "nanny_question_id",      limit: 4
    t.integer  "driver_question_id",     limit: 4
    t.string   "questions_ru",           limit: 255
    t.string   "question_en",            limit: 255
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "client_requests", force: :cascade do |t|
    t.string   "full_name",          limit: 255
    t.string   "email",              limit: 255
    t.string   "phone",              limit: 255
    t.integer  "category_id",        limit: 4
    t.text     "message",            limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "client_id",          limit: 4
    t.string   "gender",             limit: 255
    t.string   "height",             limit: 255
    t.string   "weight",             limit: 255
    t.integer  "age_minimum",        limit: 4
    t.integer  "age_max",            limit: 4
    t.string   "marital_status",     limit: 255
    t.string   "nationality",        limit: 255
    t.string   "citizenship",        limit: 255
    t.boolean  "smoker"
    t.string   "zodiac_sign",        limit: 255
    t.boolean  "driving_license"
    t.boolean  "car"
    t.integer  "level_education_id", limit: 4
    t.string   "years_experience",   limit: 255
    t.integer  "salary",             limit: 4
  end

  create_table "client_resquest_languages", force: :cascade do |t|
    t.integer  "client_request_id", limit: 4
    t.integer  "language_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.text     "message",     limit: 65535
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "controllers", force: :cascade do |t|
    t.string   "Client",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cooker_questions", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
    t.boolean  "family"
    t.boolean  "restaurants"
    t.boolean  "purchase"
    t.boolean  "menu"
    t.boolean  "banquets"
    t.boolean  "during_banquet"
    t.boolean  "kids"
    t.boolean  "diets"
    t.text     "knowledge_kitchen", limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "client_request_id", limit: 4
  end

  create_table "driver_questions", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
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
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "education_infos", force: :cascade do |t|
    t.integer  "candidate_id", limit: 4
    t.string   "level",        limit: 255
    t.text     "history",      limit: 65535
    t.text     "languages",    limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "general_translations", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.text     "en",         limit: 65535
    t.text     "ru",         limit: 65535
    t.string   "page",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "governess_questions", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
    t.boolean  "five_to_seven"
    t.boolean  "seven_to_ten"
    t.boolean  "cooking"
    t.boolean  "school"
    t.boolean  "assistant"
    t.boolean  "foreign_languages"
    t.boolean  "several_children"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "client_request_id", limit: 4
  end

  create_table "housekeeper_questions", force: :cascade do |t|
    t.integer  "candidate_id",      limit: 4
    t.boolean  "dry_wet"
    t.boolean  "washing"
    t.boolean  "vip"
    t.boolean  "furniture"
    t.boolean  "cooking"
    t.boolean  "plants_animals"
    t.boolean  "appliances"
    t.boolean  "large_areas"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "client_request_id", limit: 4
  end

  create_table "images", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.string   "page",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image",      limit: 255
    t.string   "text",       limit: 255
  end

  create_table "interviews", force: :cascade do |t|
    t.integer  "client_request_id", limit: 4
    t.integer  "candidate_id",      limit: 4
    t.date     "interview_date"
    t.string   "address",           limit: 255
    t.string   "contact",           limit: 255
    t.text     "comments",          limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "hour",              limit: 255
    t.string   "phone_number",      limit: 255
    t.integer  "client_id",         limit: 4
    t.string   "status",            limit: 255
  end

  create_table "languages", force: :cascade do |t|
    t.string   "language",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "ru",         limit: 255
  end

  create_table "legal_works", force: :cascade do |t|
    t.integer  "candidate_id", limit: 4
    t.string   "description",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "en",           limit: 255
    t.string   "ru",           limit: 255
  end

  create_table "level_educations", force: :cascade do |t|
    t.string   "level",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "ru",         limit: 255
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.string   "title",      limit: 255
    t.string   "ru",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "nanny_questions", force: :cascade do |t|
    t.boolean  "cooking"
    t.boolean  "walking"
    t.boolean  "cleaning"
    t.boolean  "education"
    t.boolean  "trips"
    t.boolean  "several"
    t.boolean  "household_help"
    t.text     "education_techniques", limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "birth_to_one",         limit: 255
    t.boolean  "one_to_three"
    t.boolean  "three_to_six"
    t.boolean  "regime"
    t.boolean  "work_several"
    t.integer  "client_request_id",    limit: 4
    t.integer  "client_id",            limit: 4
    t.integer  "candidate_id",         limit: 4
    t.integer  "category_id",          limit: 4
  end

  create_table "nurse_questions", force: :cascade do |t|
    t.integer  "candidate_id",            limit: 4
    t.boolean  "older_people"
    t.boolean  "ambulant_patients"
    t.boolean  "immobile_patients"
    t.boolean  "measurements"
    t.boolean  "intramuscular_injection"
    t.boolean  "intravenous_injection"
    t.boolean  "procedures"
    t.boolean  "cleaning_cooking"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "client_request_id",       limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vacancies", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.string   "country",      limit: 255
    t.string   "city",         limit: 255
    t.string   "salary",       limit: 255
    t.text     "description",  limit: 65535
    t.text     "requirements", limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "category_id",  limit: 4
  end

  create_table "work_infos", force: :cascade do |t|
    t.integer  "category_id",        limit: 4
    t.text     "sectors_experience", limit: 65535
    t.string   "years_experience",   limit: 255
    t.string   "current_job",        limit: 255
    t.string   "last_employer",      limit: 255
    t.text     "key_skills",         limit: 65535
    t.string   "salary",             limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "candidate_id",       limit: 4
  end

end
