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

ActiveRecord::Schema.define(version: 20170704163251) do

  create_table "hoppers", force: :cascade do |t|
    t.integer "movement_id"
    t.integer "workout_id"
    t.integer "time_domain"
  end

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.string "target_area"
    t.string "rep_range"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
  end

  create_table "workout_movement_styles", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "movement_id"
    t.integer "style_id"
  end

  create_table "workouts", force: :cascade do |t|
  end

end
