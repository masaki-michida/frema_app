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

ActiveRecord::Schema.define(version: 2020_06_09_053542) do

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "sub_category_id"
    t.string "name"
    t.index ["sub_category_id"], name: "fk_rails_22bc6bab91"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.text "statement", null: false
    t.bigint "category_id", null: false
    t.bigint "brand_id"
    t.integer "condition", null: false
    t.integer "delivery_fee", null: false
    t.string "prefecture", null: false
    t.integer "lag", null: false
    t.integer "price", null: false
    t.integer "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "fk_rails_36708b3aa6"
    t.index ["category_id"], name: "fk_rails_89fb86dc8b"
    t.index ["user_id"], name: "fk_rails_d4b6334db2"
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "sub_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "top_category_id"
    t.string "name"
    t.index ["top_category_id"], name: "fk_rails_7b09ea5b1a"
  end

  create_table "top_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "familyname", default: "", null: false
    t.string "firstname", default: "", null: false
    t.string "family_ch", default: "", null: false
    t.string "first_ch", default: "", null: false
    t.string "birth", null: false
    t.string "to_familyname", default: "", null: false
    t.string "to_firstname", default: "", null: false
    t.string "to_family_ch", default: "", null: false
    t.string "to_first_ch", default: "", null: false
    t.string "zip", null: false
    t.string "prefecture", null: false
    t.string "adress_city", null: false
    t.string "adress_street", null: false
    t.string "adress_building"
    t.string "phone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "sub_categories"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "users"
  add_foreign_key "sub_categories", "top_categories"
end
