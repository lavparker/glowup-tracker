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

ActiveRecord::Schema[7.0].define(version: 2023_10_01_052948) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "workout_name", null: false
    t.string "description", null: false
    t.integer "reps"
    t.integer "sets"
    t.string "time"
    t.string "body_part", null: false
    t.string "energy_level"
    t.string "weight_type", null: false
    t.string "workout_location", null: false
    t.string "equipment_needed"
    t.string "weight_added"
    t.string "total_time"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part"], name: "index_workouts_on_body_part"
    t.index ["energy_level"], name: "index_workouts_on_energy_level"
    t.index ["equipment_needed"], name: "index_workouts_on_equipment_needed"
    t.index ["total_time"], name: "index_workouts_on_total_time"
    t.index ["weight_type"], name: "index_workouts_on_weight_type"
    t.index ["workout_location"], name: "index_workouts_on_workout_location"
  end

end
