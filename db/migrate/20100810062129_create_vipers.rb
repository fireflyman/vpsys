class CreateVipers < ActiveRecord::Migration
  def self.up
    create_table :vipers do |t|
      t.string :bndid
      t.string :cardtype
      t.string :cardno
      t.string :cmpid
      t.string :ctrid
      t.string :shop
      t.string :cname
      t.string :ename
      t.string :gender
      t.datetime :bdate
      t.string :idcard
      t.string :city
      t.string :marr
      t.string :degree
      t.string :occup
      t.string :income
      t.text :address1
      t.text :address2
      t.text :address
      t.string :hometel
      t.string :offitel
      t.string :bpno
      t.string :email
      t.string :grade
      t.datetime :adate
      t.datetime :tdate
      t.datetime :ddate
      t.datetime :udate

      t.timestamps
    end
  end

  def self.down
    drop_table :vipers
  end
end
