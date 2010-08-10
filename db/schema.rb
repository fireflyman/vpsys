# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100810110103) do

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "roles",                                    :default => "qsguy"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "vipers", :force => true do |t|
    t.string   "bndid"
    t.string   "cardtype"
    t.string   "cardno"
    t.string   "cmpid"
    t.string   "ctrid"
    t.string   "shop"
    t.string   "cname"
    t.string   "ename"
    t.string   "gender"
    t.datetime "bdate"
    t.string   "idcard"
    t.string   "city"
    t.string   "marr"
    t.string   "degree"
    t.string   "occup"
    t.string   "income"
    t.text     "address1"
    t.text     "address2"
    t.text     "address"
    t.string   "hometel"
    t.string   "offitel"
    t.string   "bpno"
    t.string   "email"
    t.string   "grade"
    t.datetime "adate"
    t.datetime "tdate"
    t.datetime "ddate"
    t.datetime "udate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
