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

ActiveRecord::Schema.define(version: 2019_10_30_233212) do

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.integer "max_area"
    t.integer "max_countries"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "countries" because of following StandardError
#   Unknown type '' for column 'continent'

# Could not dump table "currencies" because of following StandardError
#   Unknown type '' for column 'country'

# Could not dump table "defaults_als" because of following StandardError
#   Unknown type 'reference' for column 'currency'

end
