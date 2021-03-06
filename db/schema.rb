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

ActiveRecord::Schema.define(version: 2022_02_03_034816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
  end

  create_table "libraries_projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "library_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "title"
    t.text "location"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.text "images", default: [], array: true
    t.text "project_url"
  end

  create_table "projects_styles", force: :cascade do |t|
    t.integer "style_id"
    t.integer "project_id"
  end

  create_table "projects_users", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "password_digest"
    t.text "studio"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "studio_url"
    t.text "image"
  end

end
