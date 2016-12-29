class OrgStructure < ActiveRecord::Base
	belongs_to :channel_brand
	belongs_to :customer_classify
	has_many :staff_org_structures, dependent: :destroy
	has_many :staffs, through: :staff_org_structures
end
