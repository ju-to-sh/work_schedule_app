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

ActiveRecord::Schema.define(version: 2021_02_13_211504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.string "classification", null: false
    t.text "content", null: false
    t.string "certification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_skills", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skill_id"], name: "index_work_skills_on_skill_id"
    t.index ["work_id", "skill_id"], name: "index_work_skills_on_work_id_and_skill_id", unique: true
    t.index ["work_id"], name: "index_work_skills_on_work_id"
  end

  create_table "works", force: :cascade do |t|
    t.string "name", null: false
    t.text "content", null: false
    t.string "user_name", null: false
    t.string "required_skill"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "priority"
  end

  add_foreign_key "work_skills", "skills"
  add_foreign_key "work_skills", "works"
end
