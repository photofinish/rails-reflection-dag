class Flow::StageStaff < ActiveRecord::Base
  belongs_to :staff, foreign_key: :staff_id, :class_name => 'Staff'
  belongs_to :stage, foreign_key: :flow_stage_id, :class_name => 'Flow::Stage'
end
