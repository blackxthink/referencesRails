# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_05_141235) do

  create_table "joueurs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "nom"
    t.string "prenom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mouvements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "joueur_id"
    t.bigint "partie_id"
    t.string "lettre"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["joueur_id"], name: "index_mouvements_on_joueur_id"
    t.index ["partie_id"], name: "index_mouvements_on_partie_id"
  end

  create_table "parties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "joueur_1_id"
    t.bigint "joueur_2_id"
    t.bigint "gagnant_id"
    t.text "plateau_joueur_1", null: false
    t.text "plateau_joueur_2", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gagnant_id"], name: "index_parties_on_gagnant_id"
    t.index ["joueur_1_id"], name: "index_parties_on_joueur_1_id"
    t.index ["joueur_2_id"], name: "index_parties_on_joueur_2_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mouvements", "joueurs"
  add_foreign_key "mouvements", "parties", column: "partie_id"
  add_foreign_key "parties", "joueurs", column: "gagnant_id"
  add_foreign_key "parties", "joueurs", column: "joueur_1_id"
  add_foreign_key "parties", "joueurs", column: "joueur_2_id"
end
