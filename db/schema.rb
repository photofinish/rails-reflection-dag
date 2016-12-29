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

ActiveRecord::Schema.define(version: 20161216075420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_scopes", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channel_brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "mobile"
    t.string   "qq"
    t.string   "landline"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "compact_no"
    t.string   "customer_id"
    t.string   "compact_attribute"
    t.datetime "signed_date"
    t.datetime "effective_time"
    t.decimal  "deposit_line"
    t.integer  "deposit_return_times"
    t.string   "compact_task"
    t.string   "compactor"
    t.integer  "return_policy_id"
    t.integer  "compact_return_mode_id"
    t.string   "return_mode"
    t.integer  "platform_id"
    t.integer  "customer_classify_id"
    t.decimal  "performance_deposit"
    t.decimal  "decoration_subsidy_standard"
    t.decimal  "sum_subsidy"
    t.string   "decoration_subsidy_return_mode"
    t.string   "decoration_subsidy_return_date"
    t.string   "deposit_return_mode"
    t.decimal  "lease_area"
    t.integer  "purpose_id"
    t.decimal  "rental_unit_price"
    t.decimal  "monthly"
    t.string   "rent_change_note"
    t.decimal  "property_management_fee"
    t.decimal  "monthly_management_fee"
    t.integer  "rent_way"
    t.string   "party_a"
    t.string   "party_a_contact"
    t.string   "party_a_mobile"
    t.string   "party_b"
    t.string   "party_b_contact"
    t.string   "party_b_mobile"
    t.string   "product_brand"
    t.string   "category"
    t.integer  "performance_deposit_return_id"
    t.integer  "ad_return_id"
    t.integer  "material_return_id"
    t.integer  "contract_type_id"
    t.integer  "applicant_id"
    t.datetime "apply_time"
    t.integer  "status",                         default: 0
    t.boolean  "active",                         default: true
    t.text     "remark"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "customer_classifies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_images", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "customer_id"
    t.integer  "position"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customer_manage_infos", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "platform_id"
    t.integer  "channel_brand_id"
    t.integer  "customer_classify_id"
    t.string   "team"
    t.integer  "applicant_id"
    t.integer  "waiter_id"
    t.datetime "apply_time"
    t.integer  "service_warehouse_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "customer_manage_infos", ["customer_id"], name: "index_customer_manage_infos_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "customer_no"
    t.string   "name"
    t.string   "address"
    t.string   "market"
    t.integer  "business_scope_id"
    t.string   "operating_area"
    t.string   "team_no"
    t.string   "operation_mode"
    t.string   "store_feature"
    t.string   "warehouse_area"
    t.boolean  "active",            default: true
    t.integer  "applicant_id"
    t.integer  "customer_type_id"
    t.datetime "apply_time"
    t.integer  "status",            default: 0
    t.integer  "manage_info",       default: 0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "discusses", force: :cascade do |t|
    t.string   "work_number"
    t.integer  "staff_id"
    t.integer  "at_staff_id"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.integer  "staff_id"
    t.integer  "record_id"
    t.string   "record_type"
    t.string   "feed_type"
    t.boolean  "has_read"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "flow_instances", force: :cascade do |t|
    t.string   "number",                null: false
    t.integer  "flow_project_id"
    t.integer  "flow_stage_id"
    t.integer  "target_id"
    t.string   "target_type"
    t.string   "current_operators_ids"
    t.integer  "applicant_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "flow_operation_logs", force: :cascade do |t|
    t.integer  "flow_instance_id"
    t.integer  "flow_stage_id"
    t.integer  "operator_id"
    t.string   "remark"
    t.string   "current_operators_ids"
    t.string   "next_operators_names"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "flow_projects", force: :cascade do |t|
    t.string   "name"
    t.string   "target_type"
    t.integer  "department_id"
    t.string   "action"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "flow_stage_staffs", force: :cascade do |t|
    t.integer  "staff_id"
    t.integer  "flow_stage_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "flow_stages", force: :cascade do |t|
    t.integer  "flow_project_id"
    t.integer  "previous_stage_id"
    t.string   "type"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "md5"
    t.integer  "file_size"
    t.string   "filename"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operation_logs", force: :cascade do |t|
    t.string   "record_num"
    t.integer  "operator_id"
    t.string   "operator_role"
    t.string   "operation"
    t.string   "remark"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "org_structures", force: :cascade do |t|
    t.integer  "platform_id"
    t.integer  "channel_brand_id"
    t.integer  "customer_classify_id"
    t.string   "team"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "role_resources", force: :cascade do |t|
    t.integer  "role_id"
    t.string   "resource_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "role_resources", ["role_id"], name: "index_role_resources_on_role_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "zh_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "service_warehouses", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_logs", force: :cascade do |t|
    t.integer  "operator_id"
    t.string   "employee_no"
    t.string   "name"
    t.integer  "leader_id"
    t.string   "job_position"
    t.boolean  "active"
    t.integer  "staff_id"
    t.integer  "department_id"
    t.datetime "last_login_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "staff_org_structures", force: :cascade do |t|
    t.integer  "org_structure_id"
    t.integer  "staff_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "staff_org_structures", ["org_structure_id"], name: "index_staff_org_structures_on_org_structure_id", using: :btree
  add_index "staff_org_structures", ["staff_id"], name: "index_staff_org_structures_on_staff_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "employee_no"
    t.string   "name"
    t.integer  "department_id"
    t.integer  "group_id"
    t.integer  "leader_id"
    t.string   "job_position"
    t.boolean  "active"
    t.string   "password_digest"
    t.datetime "last_login_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "staffs_roles", id: false, force: :cascade do |t|
    t.integer "staff_id"
    t.integer "role_id"
  end

  add_index "staffs_roles", ["staff_id", "role_id"], name: "index_staffs_roles_on_staff_id_and_role_id", using: :btree

  add_foreign_key "customer_manage_infos", "customers"
  add_foreign_key "role_resources", "roles"
  add_foreign_key "staff_org_structures", "org_structures"
  add_foreign_key "staff_org_structures", "staffs"
end
