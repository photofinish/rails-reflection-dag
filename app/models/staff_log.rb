class StaffLog < ActiveRecord::Base
	belongs_to :staff, :foreign_key => "operator_id", :class_name => "Staff"

end
