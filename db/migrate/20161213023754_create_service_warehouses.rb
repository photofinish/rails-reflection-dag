class CreateServiceWarehouses < ActiveRecord::Migration
  def change
    create_table :service_warehouses do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
