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

ActiveRecord::Schema.define(version: 20150417034444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxes", force: true do |t|
    t.string   "barcode"
    t.float    "weight"
    t.float    "height"
    t.float    "width"
    t.float    "depth"
    t.integer  "box_number"
    t.string   "photo"
    t.string   "condition"
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
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "barcode"
    t.integer  "box_id"
    t.integer  "product_id"
    t.string   "serial_number"
    t.string   "model_number"
    t.float    "price"
    t.string   "location"
    t.string   "condition"
    t.string   "firmware"
    t.string   "photo"
    t.string   "brand"
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
    t.string   "origin"
    t.string   "destination"
    t.string   "delivery_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "software_serials", force: true do |t|
    t.string   "serial_number"
    t.integer  "software_id"
    t.string   "operative_system"
    t.float    "price"
    t.integer  "software_availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "software_serials", ["serial_number"], name: "index_software_serials_on_serial_number", unique: true, using: :btree
  add_index "software_serials", ["software_id"], name: "index_software_serials_on_software_id", using: :btree

  create_table "softwares", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
