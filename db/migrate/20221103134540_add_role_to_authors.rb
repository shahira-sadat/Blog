class AddRoleToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :role, :string, default: 'read', null: false
  end
end
