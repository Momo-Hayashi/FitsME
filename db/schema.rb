ActiveRecord::Schema.define(version: 2021_08_02_084736) do
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

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "name", null: false
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "amount", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stock_id"
    t.index ["stock_id"], name: "index_carts_on_stock_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "clothes", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "price", null: false
    t.text "size", null: false
    t.bigint "retailer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["retailer_id"], name: "index_clothes_on_retailer_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "clothe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_favorites_on_clothe_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "clothe_id"
    t.integer "price", null: false
    t.integer "amount", default: 1, null: false
    t.integer "zipcode", null: false
    t.integer "prefecture", null: false
    t.string "city", null: false
    t.text "following_address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_orders_on_clothe_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "retailers", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "logo"
    t.text "website_url"
    t.string "phone_number"
    t.text "address"
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
    t.index ["email"], name: "index_retailers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_retailers_on_reset_password_token", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.string "size"
    t.string "color"
    t.integer "quantity"
    t.bigint "clothe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_stocks_on_clothe_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.string "last_name"
    t.string "first_name"
    t.integer "points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "carts", "stocks"
  add_foreign_key "carts", "users"
  add_foreign_key "clothes", "retailers"
  add_foreign_key "favorites", "clothes"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders", "clothes"
  add_foreign_key "orders", "users"
  add_foreign_key "stocks", "clothes"
end
