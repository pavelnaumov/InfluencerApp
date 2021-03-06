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

ActiveRecord::Schema.define(version: 2018_10_03_072314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "description"
    t.string "picture"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "media_type"
    t.string "content_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "client_id"
    t.integer "youtube_vid"
    t.integer "youtube_ref"
    t.integer "instagram_story"
    t.integer "instagram_post"
    t.integer "price_cents", default: 0, null: false
    t.string "job_title"
    t.boolean "completed", default: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "job_title"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "EUR", null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "influencer_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "score"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_reviews_on_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "nif"
    t.string "location"
    t.integer "age"
    t.string "gender"
    t.string "company"
    t.string "influence_level"
    t.integer "global_score"
    t.string "photo"
    t.integer "media_type"
    t.string "instagram_identifier"
    t.string "youtube_identifier"
    t.integer "number_of_followers"
    t.string "content_type"
    t.integer "target_generation"
    t.integer "youtube_vid_price"
    t.integer "youtube_ref_price"
    t.integer "instagram_post_price"
    t.integer "instagram_story_price"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "users"
  add_foreign_key "jobs", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "jobs"
end
