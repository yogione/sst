class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :menu_id
      t.string :delivery_location
      t.string :delivery_sub_location
      t.datetime :delivery_time
      t.string :status
      t.string :comments

      t.timestamps
    end
  end
end
