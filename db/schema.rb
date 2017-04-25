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

ActiveRecord::Schema.define(version: 20170425033644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.integer  "path_id",    null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paths", force: :cascade do |t|
    t.string   "name",                          null: false
    t.text     "polyline",                      null: false
    t.float    "distance",                      null: false
    t.string   "start_address",                 null: false
    t.string   "end_address",                   null: false
    t.integer  "duration",      default: 0
    t.boolean  "done",          default: false
    t.date     "done_date"
    t.integer  "user_id",                       null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "description"
    t.index ["user_id"], name: "index_paths_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                                                                          null: false
    t.string   "first_name",                                                                                     null: false
    t.string   "last_name",                                                                                      null: false
    t.string   "password_digest",                                                                                null: false
    t.string   "session_token",                                                                                  null: false
    t.string   "img_url",         default: "https://s3.us-east-2.amazonaws.com/mapmyrun-dev/default_avatar.png"
    t.datetime "created_at",                                                                                     null: false
    t.datetime "updated_at",                                                                                     null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["first_name"], name: "index_users_on_first_name", using: :btree
    t.index ["last_name"], name: "index_users_on_last_name", using: :btree
    t.index ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  end

end
