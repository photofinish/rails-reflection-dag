class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_no
      t.string :name
      t.string :address
      t.string :market
      t.integer :business_scope_id
      t.string :operating_area
      t.string :team_no
      t.string :operation_mode
      t.string :store_feature
      t.string :warehouse_area
      t.boolean :active, default: true
      t.integer :applicant_id
      t.integer :customer_type_id
      t.datetime :apply_time
      t.integer :status, default: 0
      t.integer :manage_info, default: 0

      t.timestamps null: false
    end
  end
end
