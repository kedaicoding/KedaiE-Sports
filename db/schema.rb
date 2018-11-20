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

ActiveRecord::Schema.define(version: 2018_11_20_185440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string "real_name", limit: 35, null: false
    t.string "nickname", limit: 25, null: false
    t.string "role", limit: 25, null: false
    t.string "rank", limit: 35, null: false
    t.integer "team_id"
    t.string "email", limit: 55, null: false
    t.string "foto"
  end

  create_table "team_galleries", force: :cascade do |t|
    t.string "file_name", null: false
    t.string "tag_gallery", limit: 25, null: false
    t.text "description", null: false
    t.integer "team_id"
  end

  create_table "team_track_records", force: :cascade do |t|
    t.integer "team_id"
    t.text "content"
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

end
