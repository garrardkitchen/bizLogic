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

ActiveRecord::Schema.define(:version => 20120912105057) do

  create_table "logics", :force => true do |t|
    t.text     "code"
    t.text     "description"
    t.integer  "logic_order"
    t.integer  "user_id"
    t.integer  "page_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "logics", ["id"], :name => "index_logics_on_id"
  add_index "logics", ["user_id"], :name => "index_logics_on_user_id"

  create_table "pages", :force => true do |t|
    t.string   "name",        :limit => 100, :null => false
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "pages", ["id"], :name => "index_pages_on_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_active"
    t.boolean  "is_deleted"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["id"], :name => "index_users_on_id"

end
