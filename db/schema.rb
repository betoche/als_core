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

ActiveRecord::Schema.define(version: 2019_11_05_175413) do

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

  create_table "document_type_by_countries", force: :cascade do |t|
    t.integer "country_id", null: false
    t.integer "document_type_id", null: false
    t.string "name"
    t.string "abbreviation"
    t.boolean "local"
    t.boolean "international"
    t.integer "number_length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_document_type_by_countries_on_country_id"
    t.index ["document_type_id"], name: "index_document_type_by_countries_on_document_type_id"
  end

  create_table "document_types", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.boolean "local", default: true
    t.boolean "international", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.integer "currency_id", null: false
    t.date "date"
    t.decimal "rate", precision: 10, scale: 8
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_exchange_rates_on_currency_id"
  end

  add_foreign_key "document_type_by_countries", "countries"
  add_foreign_key "document_type_by_countries", "document_types"
  add_foreign_key "exchange_rates", "currencies"
end
