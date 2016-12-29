class StaffsRole < ActiveRecord::Base
	belongs_to :staff
	belongs_to :role
end