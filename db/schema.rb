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

ActiveRecord::Schema.define(version: 20160807131353) do

  create_table "lections", force: :cascade do |t|
    t.string   "titolo"
    t.decimal  "prezzo"
    t.text     "descrizione"
    t.datetime "data_e_ora"
    t.string   "park"
    t.text     "meeting_point"
    t.text     "equipment"
    t.string   "city"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lezionis", force: :cascade do |t|
    t.string   "titolo"
    t.decimal  "prezzo"
    t.text     "descrizione"
    t.date     "date"
    t.string   "park"
    t.text     "meeting_point"
    t.text     "equipment"
    t.string   "city"
    t.time     "time"
    t.integer  "numero_di_iscritti"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "trainer_id"
    t.integer  "minutes"
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "surname"
    t.datetime "date_of_birth"
    t.string   "description"
    t.string   "certificates"
  end

  add_index "trainers", ["email"], name: "index_trainers_on_email", unique: true
  add_index "trainers", ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "surname"
    t.datetime "date_of_birth"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
