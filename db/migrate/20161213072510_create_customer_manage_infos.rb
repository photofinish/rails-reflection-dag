class CreateCustomerManageInfos < ActiveRecord::Migration
  def change
    create_table :customer_manage_infos do |t|
      t.references :customer, index: true, foreign_key: true
      t.integer :platform_id
      t.integer :channel_brand_id
      t.integer :customer_classify_id
      t.string :team
      t.integer :applicant_id
      t.integer :waiter_id
      t.datetime :apply_time
      t.integer :service_warehouse_id

      t.timestamps null: false
    end
  end
end
