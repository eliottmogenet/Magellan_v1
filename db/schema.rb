# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_22_182621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_stacks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "candidate_id"
    t.bigint "stack_id"
    t.index ["candidate_id"], name: "index_candidate_stacks_on_candidate_id"
    t.index ["stack_id"], name: "index_candidate_stacks_on_stack_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "timezone"
    t.string "job"
    t.string "status"
    t.text "next_steps"
    t.string "github_profile"
    t.string "linkedin_profile"
    t.integer "expected_wage"
    t.text "softskills"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "countrie_id"
    t.bigint "tech_hub_id"
    t.string "job_status"
    t.index ["countrie_id"], name: "index_candidates_on_countrie_id"
    t.index ["tech_hub_id"], name: "index_candidates_on_tech_hub_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "candidate_id"
    t.index ["candidate_id"], name: "index_challenges_on_candidate_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text "benefits"
    t.integer "local_share_tax"
    t.string "notice_period"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "missions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.bigint "req_id"
    t.index ["req_id"], name: "index_missions_on_req_id"
  end

  create_table "req_stacks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "req_id"
    t.bigint "stack_id"
    t.index ["req_id"], name: "index_req_stacks_on_req_id"
    t.index ["stack_id"], name: "index_req_stacks_on_stack_id"
  end

  create_table "reqs", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "company"
    t.text "company_description"
    t.integer "percentage_remote"
    t.integer "size"
    t.text "org"
    t.text "project_description"
    t.text "evolution"
    t.text "application_process"
    t.integer "timezone_range"
    t.string "industry"
    t.integer "xp_min"
    t.integer "xp_max"
    t.string "blog_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stacks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tech_hubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "job"
    t.string "company"
    t.string "location"
    t.boolean "recruiter", default: true
    t.string "timezone"
    t.bigint "req_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["req_id"], name: "index_users_on_req_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
