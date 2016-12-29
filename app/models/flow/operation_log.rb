class Flow::OperationLog < ActiveRecord::Base
  belongs_to :instance, foreign_key: :flow_instance_id, class_name: 'Flow::Instance'
  belongs_to :stage, foreign_key: :flow_stage_id, class_name: 'Flow::Stage'
  belongs_to :operator, foreign_key: :operator_id, class_name: 'Staff'
end