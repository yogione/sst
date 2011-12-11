class MessagesReceivers < ActiveRecord::Migration
  def up
    create_table :messages_receivers, :id => false do |t|
      t.integer :receiver_id
      t.integer :message_id
  end
  end

  def down
    drop_table :messages_receivers
  end
end
