class CreateOrgStructures < ActiveRecord::Migration
  def change
    create_table :org_structures do |t|
      t.integer :platform_id
      t.integer :channel_brand_id
      t.integer :customer_classify_id
      t.string :team

      t.timestamps null: false
    end
  end
end
