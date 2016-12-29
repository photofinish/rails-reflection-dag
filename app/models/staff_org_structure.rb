class StaffOrgStructure < ActiveRecord::Base
  belongs_to :org_structure
  belongs_to :staff
end
