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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130529211114) do

  create_table "comments", :force => true do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "user_id"
    t.string   "post"
    t.string   "user"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string "name"
    t.string "motto"
    t.string "subscriptions"
  end

  create_table "posts", :force => true do |t|
    t.string  "title"
    t.string  "content"
    t.string  "user"
    t.string  "comments"
    t.integer "user_id"
  end

  create_table "statuses", :force => true do |t|
    t.integer "user_id"
    t.string  "content"
  end

  create_table "subscriptions", :force => true do |t|
    t.datetime "renew_date"
    t.integer  "user_id"
    t.integer  "group_id"
  end

  create_table "users", :force => true do |t|
    t.string "subscriptions"
    t.string "posts"
    t.string "status"
    t.string "comments"
    t.string "groups"
    t.string "name"
    t.string "email"
  end

end
