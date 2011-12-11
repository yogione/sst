class AddTimesToReceivers < ActiveRecord::Migration
  def change
    add_column :receivers, :t1, :datetime
    add_column :receivers, :t2, :datetime
    add_column :receivers, :t3, :datetime
    add_column :receivers, :t4, :datetime
    add_column :receivers, :t5, :datetime
    add_column :receivers, :t6, :datetime
    add_column :receivers, :t7, :datetime
  end
end
