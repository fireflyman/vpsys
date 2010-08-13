class AddPointToViper < ActiveRecord::Migration
  def self.up
    add_column :vipers, :point, :integer, :default => 0
  end

  def self.down
    remove_column :vipers, :point
  end
end
