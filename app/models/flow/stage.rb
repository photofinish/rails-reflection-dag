class Flow::Stage < ActiveRecord::Base
  has_many :stage_staffs, foreign_key: :flow_stage_id, :class_name => 'Flow::StageStaff'
  has_many :staffs, through: :stage_staffs, source: :staff, :class_name => 'Staff'
  belongs_to :project, foreign_key: :flow_project_id, :class_name => 'Flow::Project'
  belongs_to :previous_stage, foreign_key: :previous_stage_id, class_name: 'Flow::Stage'
  has_one :next_stage, foreign_key: :previous_stage_id, class_name: 'Flow::Stage'

end


