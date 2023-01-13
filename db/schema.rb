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

ActiveRecord::Schema[7.0].define(version: 2023_01_13_152734) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exit_tickets", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "subject_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grade_level"
    t.index ["grade_level"], name: "index_exit_tickets_on_grade_level"
    t.index ["subject_area"], name: "index_exit_tickets_on_subject_area"
    t.index ["title"], name: "index_exit_tickets_on_title"
    t.index ["user_id"], name: "index_exit_tickets_on_user_id"
  end

  create_table "reflection_questions", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
  end

end
