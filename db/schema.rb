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

ActiveRecord::Schema.define(:version => 20100322172302) do

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.string   "url_name"
    t.string   "description"
    t.string   "path_to_file"
    t.integer  "rating"
    t.integer  "number_of_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", :force => true do |t|
    t.integer  "picture_id"
    t.integer  "vote_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
