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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131014025616) do

  create_table "address_pool_blueprints", force: true do |t|
    t.string   "name"
    t.string   "default_public_flag"
    t.string   "default_shareable_flag"
    t.string   "nat_pool_name"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_pool_blueprints", ["pod_id"], name: "index_address_pool_blueprints_on_pod_id"

  create_table "address_range_blueprints", force: true do |t|
    t.string   "name"
    t.string   "default_pool_mask"
    t.string   "default_public_flag"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_range_blueprints", ["pod_id"], name: "index_address_range_blueprints_on_pod_id"

  create_table "containers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "major"
    t.string   "minor"
    t.string   "maint"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "containers", ["pod_id"], name: "index_containers_on_pod_id"

  create_table "nic_segment_blueprints", force: true do |t|
    t.string   "address_pool_name"
    t.string   "customer_flag"
    t.string   "name"
    t.boolean  "management_flag"
    t.string   "network_name"
    t.string   "vlan_name"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nic_segment_blueprints", ["pod_id"], name: "index_nic_segment_blueprints_on_pod_id"

  create_table "node_blueprints", force: true do |t|
    t.string   "category"
    t.boolean  "default_shareable_flag"
    t.string   "name"
    t.boolean  "optional_flag"
    t.string   "role"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "node_blueprints", ["pod_id"], name: "index_node_blueprints_on_pod_id"

  create_table "pods", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "major"
    t.string   "minor"
    t.string   "maint"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pods", ["project_id"], name: "index_pods_on_project_id"

  create_table "port_type_blueprints", force: true do |t|
    t.string   "name"
    t.string   "name_within_switch"
    t.string   "nic_segment_name"
    t.integer  "node_blueprint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "port_type_blueprints", ["node_blueprint_id"], name: "index_port_type_blueprints_on_node_blueprint_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vlan_blueprints", force: true do |t|
    t.string   "vlan_name"
    t.string   "vlan_pool_name"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vlan_blueprints", ["pod_id"], name: "index_vlan_blueprints_on_pod_id"

  create_table "vlan_pool_blueprints", force: true do |t|
    t.string   "name"
    t.string   "default_start_num"
    t.string   "default_end_num"
    t.integer  "pod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vlan_pool_blueprints", ["pod_id"], name: "index_vlan_pool_blueprints_on_pod_id"

end
