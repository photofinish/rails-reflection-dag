class CreateCustomerClassifies < ActiveRecord::Migration
  def change
    create_table :customer_classifies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
