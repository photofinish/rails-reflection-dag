class Flow::Project < ActiveRecord::Base
  belongs_to :department
  has_many :instances,foreign_key: :flow_project_id, :class_name => 'Flow::Instance'

  has_many :stages, foreign_key: :flow_project_id, :class_name => 'Flow::Stage'
  has_one :init_stage, foreign_key: :flow_project_id, foreign_type: 'Flow::InitStage'
  has_one :reject_stage, foreign_key: :flow_project_id, foreign_type: 'Flow::RejectStage'
  has_one :accept_stage, foreign_key: :flow_project_id, foreign_type: 'Flow::AcceptStage'
  has_many :common_stages, -> { where(type: nil) }, foreign_key: :flow_project_id, :class_name => 'Flow::Stage'



end
