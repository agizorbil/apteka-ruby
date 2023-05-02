# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_03_27_130714) do
  create_table "customers", force: :cascade do |t|
    t.string "phone"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "second_name"
=======
ActiveRecord::Schema[7.0].define(version: 2023_05_02_072956) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "second_name"
    t.text "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 1e11775 (First Commit)
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
<<<<<<< HEAD
    t.text "descripition"
=======
    t.text "description"
>>>>>>> 1e11775 (First Commit)
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "medicines_pharmacies", id: false, force: :cascade do |t|
    t.integer "medicine_id", null: false
    t.integer "pharmacy_id", null: false
  end

  create_table "orders", force: :cascade do |t|
=======
  create_table "medicines_in_pharmacies", force: :cascade do |t|
    t.integer "pharmacy_id", null: false
    t.integer "medicine_id", null: false
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_medicines_in_pharmacies_on_medicine_id"
    t.index ["pharmacy_id"], name: "index_medicines_in_pharmacies_on_pharmacy_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "count"
    t.integer "medicine_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_order_details_on_medicine_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
>>>>>>> 1e11775 (First Commit)
    t.date "date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer "Customer_id", null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
=======
    t.index ["customer_id"], name: "index_orders_on_customer_id"
>>>>>>> 1e11775 (First Commit)
  end

  create_table "pharmacies", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "Customers"
=======
  add_foreign_key "medicines_in_pharmacies", "medicines"
  add_foreign_key "medicines_in_pharmacies", "pharmacies"
  add_foreign_key "order_details", "medicines"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "customers"
>>>>>>> 1e11775 (First Commit)
end
