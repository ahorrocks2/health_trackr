ActiveRecord::Schema.define(version: 20151028173602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cal_consumed"
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.integer  "cal_burned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
