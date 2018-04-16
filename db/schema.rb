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

ActiveRecord::Schema.define(version: 20180416042900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handlers", force: :cascade do |t|
    t.bigint "supplier_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_handlers_on_supplier_id"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_terms", force: :cascade do |t|
    t.string "clause"
    t.string "conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id"
    t.string "photo"
    t.string "description"
    t.string "finish"
    t.string "composition"
    t.string "construction"
    t.string "fit"
    t.string "placket"
    t.string "pocket"
    t.string "washing"
    t.string "other_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "quotation_details", force: :cascade do |t|
    t.bigint "quotation_id"
    t.bigint "brand_id"
    t.bigint "product_id"
    t.string "style"
    t.bigint "color_id"
    t.integer "quantity"
    t.bigint "size_id"
    t.integer "ratio"
    t.date "delivery_date"
    t.decimal "target_price", precision: 10, scale: 2
    t.decimal "final_price", precision: 10, scale: 2
    t.string "otherdetails"
    t.decimal "total", precision: 20, scale: 2
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_quotation_details_on_brand_id"
    t.index ["color_id"], name: "index_quotation_details_on_color_id"
    t.index ["product_id"], name: "index_quotation_details_on_product_id"
    t.index ["quotation_id"], name: "index_quotation_details_on_quotation_id"
    t.index ["size_id"], name: "index_quotation_details_on_size_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.bigint "season_id"
    t.bigint "supplier_id"
    t.bigint "handler_id"
    t.bigint "seller_id"
    t.bigint "client_id"
    t.bigint "payment_term_id"
    t.boolean "status"
    t.string "proforma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_quotations_on_client_id"
    t.index ["handler_id"], name: "index_quotations_on_handler_id"
    t.index ["payment_term_id"], name: "index_quotations_on_payment_term_id"
    t.index ["season_id"], name: "index_quotations_on_season_id"
    t.index ["seller_id"], name: "index_quotations_on_seller_id"
    t.index ["supplier_id"], name: "index_quotations_on_supplier_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.boolean "closed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seller_accounts", force: :cascade do |t|
    t.bigint "seller_id"
    t.string "bank"
    t.text "address"
    t.string "account"
    t.string "swift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_seller_accounts_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_accounts", force: :cascade do |t|
    t.bigint "supplier_id"
    t.string "bank"
    t.text "address"
    t.string "account"
    t.string "swift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_supplier_accounts_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "country"
    t.string "contact"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.bigint "quotation_detail_id"
    t.integer "quantity"
    t.bigint "size_id"
    t.integer "ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_detail_id"], name: "index_variants_on_quotation_detail_id"
    t.index ["size_id"], name: "index_variants_on_size_id"
  end

  add_foreign_key "handlers", "suppliers"
  add_foreign_key "products", "categories"
  add_foreign_key "quotation_details", "brands"
  add_foreign_key "quotation_details", "colors"
  add_foreign_key "quotation_details", "products"
  add_foreign_key "quotation_details", "quotations"
  add_foreign_key "quotation_details", "sizes"
  add_foreign_key "quotations", "clients"
  add_foreign_key "quotations", "handlers"
  add_foreign_key "quotations", "payment_terms"
  add_foreign_key "quotations", "seasons"
  add_foreign_key "quotations", "sellers"
  add_foreign_key "quotations", "suppliers"
  add_foreign_key "seller_accounts", "sellers"
  add_foreign_key "supplier_accounts", "suppliers"
  add_foreign_key "variants", "quotation_details"
  add_foreign_key "variants", "sizes"
end
