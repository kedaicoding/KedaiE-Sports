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

ActiveRecord::Schema.define(version: 2018_11_21_082514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coach_galleries", force: :cascade do |t|
    t.string "file_name"
    t.string "tag_gallery"
    t.text "description"
    t.bigint "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_coach_galleries_on_coach_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "nama", limit: 35, null: false
    t.string "foto"
    t.string "game", limit: 30, null: false
    t.string "experience_in_game", null: false
    t.string "nickname", limit: 35, null: false
    t.string "id_player", limit: 35, null: false
    t.text "alamat", null: false
    t.string "email", limit: 55, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roosters", force: :cascade do |t|
    t.string "real_name"
    t.string "nick_name"
    t.string "role"
    t.string "rank"
    t.string "email"
    t.string "foto"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_roosters_on_team_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.string "scheduleable_type"
    t.bigint "scheduleable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduleable_type", "scheduleable_id"], name: "index_schedules_on_scheduleable_type_and_scheduleable_id"
  end

  create_table "team_galleries", force: :cascade do |t|
    t.string "file_name", null: false
    t.string "tag_gallery", limit: 25, null: false
    t.text "description", null: false
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "nama_team", limit: 25, null: false
    t.string "logo_team"
    t.text "alamat", null: false
    t.string "game", null: false
    t.text "email", null: false
    t.string "manajer", limit: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_record_coaches", force: :cascade do |t|
    t.bigint "coach_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_track_record_coaches_on_coach_id"
  end

  create_table "track_record_teams", force: :cascade do |t|
    t.bigint "team_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_track_record_teams_on_team_id"
  end

  add_foreign_key "coach_galleries", "coaches"
  add_foreign_key "roosters", "teams"
  add_foreign_key "track_record_coaches", "coaches"
  add_foreign_key "track_record_teams", "teams"
end
