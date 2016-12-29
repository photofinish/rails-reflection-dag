class Staff < ActiveRecord::Base

  belongs_to :department
	has_many :stage_staffs, foreign_key: :staff_id, :class_name => 'Flow::StageStaff'
	has_many :staff_departments, dependent: :destroy
	has_many :staffs_roles
	has_many :roles, through: :staffs_roles
	has_many :customers, foreign_key: "applicant_id"
	has_many :unread_feeds, -> { where(active: true, has_read: false).order(created_at: :desc) }, class_name: "Feed"


end
