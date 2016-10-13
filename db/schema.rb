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

ActiveRecord::Schema.define(version: 20161013160501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "keywords", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_keywords", force: :cascade do |t|
    t.integer  "keyword_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword_id"], name: "index_product_keywords_on_keyword_id", using: :btree
    t.index ["product_id"], name: "index_product_keywords_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.integer  "minimum_order"
    t.string   "material"
    t.string   "print_technique"
    t.integer  "number_of_colors"
    t.string   "varnish_technique"
    t.string   "lamination_technique"
    t.string   "foil_print"
    t.boolean  "embossed"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "factory_id"
    t.integer  "buyer_id"
    t.index ["buyer_id"], name: "index_requests_on_buyer_id", using: :btree
    t.index ["factory_id"], name: "index_requests_on_factory_id", using: :btree
    t.index ["product_id"], name: "index_requests_on_product_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "factory"
    t.string   "company_name"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "activity_field"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "job_title"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.integer  "company_revenues"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "product_keywords", "keywords"
  add_foreign_key "product_keywords", "products"
  add_foreign_key "products", "users"
  add_foreign_key "requests", "products"
  add_foreign_key "requests", "users", column: "buyer_id"
  add_foreign_key "requests", "users", column: "factory_id"
end
