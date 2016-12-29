class CreateDiscusses < ActiveRecord::Migration
  def change
    create_table :discusses do |t|
      t.string :work_number
      t.integer :staff_id
      t.integer :at_staff_id
      t.text :content

      t.timestamps null: false
    end
  end
end
