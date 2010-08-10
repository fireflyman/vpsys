class AddRolesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :roles, :string, :default => "qsguy"
  end

  def self.down
    remove_column :users, :roles
  end
end
