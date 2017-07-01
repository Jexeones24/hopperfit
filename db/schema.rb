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

ActiveRecord::Schema.define(version: 20170701145748) do

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.string "target_area"
    t.string "description"
    t.string "demo_vid"
  end

  create_table "workout_movements", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "movement_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "level"
    t.integer "time"
    t.string "style"
  end

end