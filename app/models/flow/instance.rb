class Flow::Instance < ActiveRecord::Base

  belongs_to :project, foreign_key: :flow_project_id, :class_name => 'Flow::Project'
  belongs_to :stage, foreign_key: :flow_stage_id, :class_name => 'Flow::Stage'
  belongs_to :target, polymorphic: true
  has_many :operation_logs, foreign_key: :flow_instance_id, class_name: 'Flow::OperationLog'
  has_many :feeds, as: :record
  belongs_to :applicant, :class_name => 'Staff'
  belongs_to :customer, foreign_key: :target_id, class_name: 'Customer'
  belongs_to :customer_manage_info, foreign_key: :target_id, class_name: 'CustomerManageInfo'


end
