class CreateFlowProjects < ActiveRecord::Migration
  def change
    create_table :flow_projects do |t|
      t.string :name
      t.string :target_type
      t.integer :department_id
      t.string :action
      t.timestamps null: false
    end

    create_table :flow_instances do |t|
      t.string :number, null: false
      t.belongs_to :flow_project
      t.belongs_to :flow_stage
      t.integer :target_id
      t.string :target_type
      t.string :current_operators_ids
      t.integer :applicant_id
      t.timestamps null: false
    end

    create_table :flow_stage_staffs do |t|
      t.belongs_to :staff
      t.belongs_to :flow_stage
      t.timestamps null: false
    end

    create_table :flow_stages do |t|
      t.belongs_to :flow_project
      t.belongs_to :previous_stage
      t.string :type
      t.string :name
      t.timestamps null: false
    end

    create_table :flow_operation_logs do |t|
      t.belongs_to :flow_instance
      t.belongs_to :flow_stage
      t.integer :operator_id
      t.string :remark
      t.string :current_operators_ids
      t.string :next_operators_names
      t.timestamps null: false
    end
  end
end
