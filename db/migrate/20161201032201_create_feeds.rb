class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.integer :staff_id
      t.integer :record_id
      t.string :record_type
      t.string :feed_type
      t.boolean :has_read
      t.boolean :active

      t.timestamps null: false
    end
  end
end
