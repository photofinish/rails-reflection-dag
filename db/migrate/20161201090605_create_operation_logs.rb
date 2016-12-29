class CreateOperationLogs < ActiveRecord::Migration
  def change
    create_table :operation_logs do |t|
    	t.string   "record_num"
    	t.integer  "operator_id"
    	t.string   "operator_role"
    	t.string   "operation"
    	t.string   "remark"

      t.timestamps null: false
    end
  end
end
