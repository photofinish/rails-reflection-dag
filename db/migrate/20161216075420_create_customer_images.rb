class CreateCustomerImages < ActiveRecord::Migration
  def change
    create_table :customer_images do |t|
      t.belongs_to :image
      t.belongs_to :customer
      t.integer  :position
      t.string :description
      t.timestamps null: false
    end
  end
end
