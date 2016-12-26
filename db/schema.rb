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

ActiveRecord::Schema.define(version: 20161226170438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "description"
    t.text     "justify_correct"
    t.boolean  "correct",         default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  end

  create_table "article_authors", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.integer  "author_type", default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "article_categories", force: :cascade do |t|
    t.string   "name"
    t.boolean  "enable",     default: false
    t.integer  "father_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "articles", force: :cascade do |t|
    t.text     "category_ids", default: [],                 array: true
    t.string   "title"
    t.text     "content"
    t.boolean  "publish",      default: false
    t.boolean  "revised",      default: false
    t.date     "publish_date"
    t.integer  "likes"
    t.integer  "old_id"
    t.text     "meta_tags"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "bulletin_articles", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "bulletin_id"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["article_id"], name: "index_bulletin_articles_on_article_id", using: :btree
    t.index ["bulletin_id"], name: "index_bulletin_articles_on_bulletin_id", using: :btree
  end

  create_table "bulletins", force: :cascade do |t|
    t.text     "description"
    t.boolean  "publish",       default: false
    t.boolean  "revised",       default: false
    t.date     "date_publish"
    t.date     "date_bulletin"
    t.integer  "layout",        default: 0
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "question_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_id"
    t.boolean  "enable",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["father_id"], name: "index_question_categories_on_father_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "category_ids",  default: [],                 array: true
    t.integer  "question_type", default: 0
    t.boolean  "publish",       default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "simulation_questions", force: :cascade do |t|
    t.integer  "simulation_id"
    t.integer  "question_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["question_id"], name: "index_simulation_questions_on_question_id", using: :btree
    t.index ["simulation_id"], name: "index_simulation_questions_on_simulation_id", using: :btree
  end

  create_table "simulations", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "difficulty",  default: 0
    t.boolean  "publish",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "user_bookmarks", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.integer  "bookmark_type", default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["article_id"], name: "index_user_bookmarks_on_article_id", using: :btree
    t.index ["user_id"], name: "index_user_bookmarks_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.text     "bio"
    t.string   "avatar"
    t.string   "email"
    t.string   "password"
    t.boolean  "administrator", default: false
    t.boolean  "reviewer",      default: false
    t.boolean  "author",        default: false
    t.boolean  "student",       default: false
    t.boolean  "viewer",        default: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
