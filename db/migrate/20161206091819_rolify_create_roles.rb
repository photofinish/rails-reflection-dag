class RolifyCreateRoles < ActiveRecord::Migration
  def change
    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true
      t.string :resource_type
      t.string :zh_name
      
      t.timestamps
    end

    create_table(:staffs_roles, :id => false) do |t|
      t.references :staff
      t.references :role
    end

    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:staffs_roles, [ :staff_id, :role_id ])
  end
end
