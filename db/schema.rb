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

ActiveRecord::Schema.define(version: 2018_12_31_080634) do

  create_table "users", id: :string, limit: 12, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", force: :cascade do |t|
    t.string "tw_uid", null: false
    t.string "tw_screen_name", null: false
    t.string "tw_name", null: false
    t.string "name", null: false
    t.boolean "active_flag", default: true, null: false
    t.string "email"
    t.string "tw_token"
    t.string "tw_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", force: :cascade do |t|
    t.string "user_id", limit: 12, null: false
    t.string "url_h", limit: 16, null: false
    t.string "url", limit: 2048, null: false
    t.string "article_host", null: false
    t.string "article_path", null: false
    t.string "title", null: false
    t.date "date", null: false
    t.integer "value_id", null: false
    t.string "comment"
    t.text "user_agent"
    t.string "uid_h", limit: 20, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
