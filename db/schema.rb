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

ActiveRecord::Schema.define(version: 20200213044401) do

  create_table "evaluates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "manga_id"
    t.integer  "v"
    t.integer  "s"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_evaluates_on_manga_id", using: :btree
    t.index ["user_id", "manga_id"], name: "index_evaluates_on_user_id_and_manga_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_evaluates_on_user_id", using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "image",      limit: 65535
    t.integer  "story_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["story_id"], name: "index_images_on_story_id", using: :btree
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "manga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_likes_on_manga_id", using: :btree
    t.index ["user_id", "manga_id"], name: "index_likes_on_user_id_and_manga_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "mangas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "imaga",      limit: 65535
    t.string   "comment"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "no_ts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "cover",      limit: 65535
    t.string   "title"
    t.string   "comment"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "reads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_reads_on_story_id", using: :btree
    t.index ["user_id", "story_id"], name: "index_reads_on_user_id_and_story_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_reads_on_user_id", using: :btree
  end

  create_table "stories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "manga_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_stories_on_manga_id", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "manga_id"
    t.string   "tag",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_tags_on_manga_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "evaluates", "mangas"
  add_foreign_key "evaluates", "users"
  add_foreign_key "images", "stories"
  add_foreign_key "likes", "mangas"
  add_foreign_key "likes", "users"
  add_foreign_key "reads", "stories"
  add_foreign_key "reads", "users"
  add_foreign_key "stories", "mangas"
  add_foreign_key "tags", "mangas"
end
