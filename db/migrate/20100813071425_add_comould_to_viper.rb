class AddComouldToViper < ActiveRecord::Migration
  def self.up
    add_column :vipers, :discount, :float, :default => 0.85
    add_column :vipers, :tolamount, :float
  end

  def self.down
    remove_column :vipers, :tolamount
    remove_column :vipers, :discount
  end
end
