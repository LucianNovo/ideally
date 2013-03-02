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

ActiveRecord::Schema.define(:version => 20130225063513) do

  create_table "ideas", :force => true do |t|
    t.string   "permalink"
    t.integer  "idea_id"
    t.boolean  "visible",                    :default => false
    t.string   "idea",        :limit => 250
    t.string   "title",       :limit => 144
    t.text     "description"
    t.integer  "ticket"
    t.string   "tags",        :limit => 50
    t.integer  "upvote"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "ideas", ["idea_id"], :name => "index_ideas_on_idea_id"
  add_index "ideas", ["permalink"], :name => "index_ideas_on_permalink"

  create_table "users", :force => true do |t|
    t.string   "username",   :limit => 20
    t.string   "password",   :limit => 20
    t.string   "email",      :limit => 40
    t.boolean  "authorized",               :default => true
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

end
