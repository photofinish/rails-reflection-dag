class CreateStaffLogs < ActiveRecord::Migration
  def change
    create_table :staff_logs do |t|
      t.integer  "operator_id"
      t.string   "employee_no"
      t.string   "name"
      t.integer  "leader_id"
      t.string   "job_position"
      t.boolean  "active"
    	t.integer  "staff_id"
      t.integer  "department_id"
      t.datetime "last_login_at"

      t.timestamps null: false
    end
  end
end
