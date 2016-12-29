class CreateRoleResources < ActiveRecord::Migration
  def change
    create_table :role_resources do |t|
      t.references :role, index: true, foreign_key: true
      t.string :resource_name

      t.timestamps null: false
    end
  end
end
