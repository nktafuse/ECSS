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

ActiveRecord::Schema.define(version: 20170304054232) do

  create_table "families", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "patient_id"
    t.string   "name",       null: false
    t.string   "postcode",   null: false
    t.string   "address",    null: false
    t.string   "tel",        null: false
    t.string   "mail",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "username",   null: false
    t.string   "tel",        null: false
    t.string   "mail",       null: false
    t.string   "postcode",   null: false
    t.string   "address",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "hospital_id"
    t.string   "name",        null: false
    t.datetime "birthday"
    t.string   "postcode",    null: false
    t.string   "address",     null: false
    t.string   "tel",         null: false
    t.string   "mail",        null: false
    t.string   "disease",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end