# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140115020101) do

  create_table "cars", force: true do |t|
    t.string   "patent"
    t.string   "frame"
    t.integer  "model_id"
    t.integer  "trademark_id"
    t.integer  "color_id"
    t.integer  "year"
    t.text     "observation"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "document_type"
    t.string   "document"
    t.string   "postal_code"
    t.integer  "iva_condition_id"
    t.date     "birthday"
    t.integer  "customer_billing_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_types", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.integer  "email_type_id"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iva_conditions", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localities", force: true do |t|
    t.integer  "province_id"
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", force: true do |t|
    t.integer  "country_id"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "street_types", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streets", force: true do |t|
    t.integer  "createStreet_type_id"
    t.string   "street"
    t.integer  "number"
    t.integer  "floor"
    t.integer  "department"
    t.integer  "locality_id"
    t.integer  "province_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephone_types", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephones", force: true do |t|
    t.integer  "telephone_type_id"
    t.string   "contact"
    t.string   "telephone"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trademarks", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
