class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
  	add_column :users, :given_name, :string
  	add_column :users, :last_name, :string
  end
end
