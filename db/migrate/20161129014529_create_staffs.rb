class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :employee_no
      t.string :name
      t.integer :department_id
      t.integer :group_id
      t.integer :leader_id
      t.string :job_position
      t.boolean :active
      t.string :password_digest
      t.datetime "last_login_at"

      t.timestamps null: false
    end
  end
end
