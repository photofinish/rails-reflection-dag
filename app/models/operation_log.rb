class OperationLog < ActiveRecord::Base
	belongs_to :operator, :foreign_key => "operator_id", :class_name => "Staff"
end
