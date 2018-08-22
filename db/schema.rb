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

ActiveRecord::Schema.define(version: 2018_08_16_135638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commentary"
    t.integer "calification"
    t.boolean "std"
    t.bigint "userc_id"
    t.bigint "userr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userc_id"], name: "index_comments_on_userc_id"
    t.index ["userr_id"], name: "index_comments_on_userr_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.boolean "std"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilities", force: :cascade do |t|
    t.string "skill"
    t.integer "std"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_habilities_on_user_id"
  end

  create_table "trysts", force: :cascade do |t|
    t.datetime "initialdate"
    t.datetime "finaldate"
    t.integer "std"
    t.bigint "user_id"
    t.bigint "tutorship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutorship_id"], name: "index_trysts_on_tutorship_id"
    t.index ["user_id"], name: "index_trysts_on_user_id"
  end

  create_table "tutorships", force: :cascade do |t|
    t.integer "std"
    t.bigint "user_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_tutorships_on_course_id"
    t.index ["user_id"], name: "index_tutorships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "typedocument"
    t.integer "document"
    t.string "name"
    t.string "lastname"
    t.datetime "birthday"
    t.bigint "city_id"
    t.string "email"
    t.boolean "std"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

  add_foreign_key "comments", "users", column: "userc_id"
  add_foreign_key "comments", "users", column: "userr_id"
  add_foreign_key "habilities", "users"
  add_foreign_key "trysts", "tutorships"
  add_foreign_key "trysts", "users"
  add_foreign_key "tutorships", "courses"
  add_foreign_key "tutorships", "users"
  add_foreign_key "users", "cities"
end
