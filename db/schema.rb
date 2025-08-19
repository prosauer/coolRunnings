# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_08_19_135006) do
  create_table "donators", force: :cascade do |t|
    t.integer "donation_in_cents", null: false
    t.text "message"
    t.integer "runner_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["runner_id"], name: "index_donators_on_runner_id"
    t.index ["user_id"], name: "index_donators_on_user_id"
  end

  create_table "event_organisations", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "organisation_id"], name: "index_event_organisations_on_event_id_and_organisation_id", unique: true
    t.index ["event_id"], name: "index_event_organisations_on_event_id"
    t.index ["organisation_id"], name: "index_event_organisations_on_organisation_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "date"
    t.integer "round_distance_in_meters", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name", null: false
    t.string "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.integer "rounds", null: false
    t.integer "time_per_round_in_seconds", null: false
    t.integer "user_id", null: false
    t.integer "event_organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_organisation_id"], name: "index_runners_on_event_organisation_id"
    t.index ["user_id"], name: "index_runners_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "donators", "runners"
  add_foreign_key "donators", "users"
  add_foreign_key "event_organisations", "events"
  add_foreign_key "event_organisations", "organisations"
  add_foreign_key "runners", "event_organisations"
  add_foreign_key "runners", "users"
  add_foreign_key "sessions", "users"
end
