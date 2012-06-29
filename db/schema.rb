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

ActiveRecord::Schema.define(:version => 20120426122451) do

  create_table "basic_data_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "data_models", :force => true do |t|
    t.string   "acceptable_data_type"
    t.integer  "acceptable_data_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "data_models", ["acceptable_data_id", "acceptable_data_type"], :name => "index_data_models_on_acceptable_data_id_and_acceptable_data_type"

  create_table "properties", :force => true do |t|
    t.integer  "semantic_schema_id"
    t.integer  "data_model_id"
    t.string   "name"
    t.string   "description"
    t.string   "sample_data"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "semantic_schemas", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "ancestry"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "semantic_schemas", ["ancestry"], :name => "index_semantic_schemas_on_ancestry"
  add_index "semantic_schemas", ["name"], :name => "index_semantic_schemas_on_name"

end
