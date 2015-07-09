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

ActiveRecord::Schema.define(version: 20150504184438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxes", force: true do |t|
    t.string   "barcode",    limit: nil
    t.float    "weight"
    t.float    "height"
    t.float    "width"
    t.float    "depth"
    t.integer  "box_number"
    t.string   "photo",      limit: nil
    t.string   "condition",  limit: nil
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boxes", ["barcode"], name: "index_boxes_on_barcode", unique: true, using: :btree

  create_table "boxes_movements", id: false, force: true do |t|
    t.integer "box_id"
    t.integer "movement_id"
  end

  add_index "boxes_movements", ["box_id"], name: "index_boxes_movements_on_box_id", using: :btree
  add_index "boxes_movements", ["movement_id"], name: "index_boxes_movements_on_movement_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",        limit: nil
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "barcode",       limit: nil
    t.integer  "box_id"
    t.integer  "product_id"
    t.string   "serial_number", limit: nil
    t.string   "model_number",  limit: nil
    t.float    "price"
    t.string   "location",      limit: nil
    t.string   "condition",     limit: nil
    t.string   "firmware",      limit: nil
    t.string   "photo",         limit: nil
    t.integer  "responsable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["barcode"], name: "index_items_on_barcode", unique: true, using: :btree
  add_index "items", ["box_id"], name: "index_items_on_box_id", using: :btree
  add_index "items", ["product_id"], name: "index_items_on_product_id", using: :btree

  create_table "items_software_serials", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "software_serial_id"
  end

  add_index "items_software_serials", ["item_id"], name: "index_items_software_serials_on_item_id", using: :btree
  add_index "items_software_serials", ["software_serial_id"], name: "index_items_software_serials_on_software_serial_id", using: :btree

  create_table "movements", force: true do |t|
    t.date     "shipping_date"
    t.date     "arrival_date"
    t.string   "origin",          limit: nil
    t.string   "destination",     limit: nil
    t.string   "delivery_method", limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",        limit: nil
    t.string   "brand",       limit: nil
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "software_serials", force: true do |t|
    t.string   "serial_number",         limit: nil
    t.integer  "software_id"
    t.string   "operative_system",      limit: nil
    t.float    "price"
    t.integer  "software_availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "software_serials", ["serial_number"], name: "index_software_serials_on_serial_number", unique: true, using: :btree
  add_index "software_serials", ["software_id"], name: "index_software_serials_on_software_id", using: :btree

  create_table "softwares", force: true do |t|
    t.string   "name",        limit: nil
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            limit: nil
    t.string   "email",           limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", limit: nil
    t.string   "remember_digest", limit: nil
    t.boolean  "admin",                       default: false
    t.string   "reset_digest",    limit: nil
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
