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

ActiveRecord::Schema.define(:version => 20101128131839) do

  create_table "attendees", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendees_conferences", :id => false, :force => true do |t|
    t.integer "conference_id"
    t.integer "attendee_id"
  end

  create_table "conferences", :force => true do |t|
    t.string   "name"
    t.date     "scheduled_to"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "name"
    t.time     "start_date"
    t.integer  "speaker_id"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speakers", :force => true do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "blog_page"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
