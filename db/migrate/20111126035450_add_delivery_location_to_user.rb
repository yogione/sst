class AddDeliveryLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :delivery_location, :string
    add_column :users, :delivery_sub_location, :string
  end
end
