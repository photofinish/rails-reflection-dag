class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :customer_id
      t.string :name
      t.string :mobile
      t.string :qq
      t.string :landline
      t.timestamps null: false
    end
  end
end
