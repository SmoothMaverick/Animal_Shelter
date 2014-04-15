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

ActiveRecord::Schema.define(version: 20140317184711) do

  create_table "animals", force: true do |t|
    t.string   "name"
    t.date     "arrival_date"
    t.integer  "care_plan_id"
    t.integer  "shelter_id"
    t.string   "size"
    t.string   "type"
    t.integer  "status"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "care_plans", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.integer  "supplies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "care_plans_supplies", force: true do |t|
    t.integer "care_plan_id"
    t.integer "supply_id"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shelters", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "size"
    t.integer  "capabilities"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.string   "role"
    t.string   "schedule"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "rank"
    t.integer  "shelter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplies", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.date     "expiration_date"
    t.string   "type"
    t.integer  "care_plans_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
