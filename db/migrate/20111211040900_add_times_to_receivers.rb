class AddTimesToReceivers < ActiveRecord::Migration
  def change
    add_column :receivers, :t1, :time
    add_column :receivers, :t2, :time
    add_column :receivers, :t3, :time
    add_column :receivers, :t4, :time
    add_column :receivers, :t5, :time
    add_column :receivers, :t6, :time
  end
end
