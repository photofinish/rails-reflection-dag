class CreateStaffOrgStructures < ActiveRecord::Migration
  def change
    create_table :staff_org_structures do |t|
      t.references :org_structure, index: true, foreign_key: true
      t.references :staff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
