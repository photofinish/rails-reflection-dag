class CreateBusinessScopes < ActiveRecord::Migration
  def change
    create_table :business_scopes do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
