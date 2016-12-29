class CreateChannelBrands < ActiveRecord::Migration
  def change
    create_table :channel_brands do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
