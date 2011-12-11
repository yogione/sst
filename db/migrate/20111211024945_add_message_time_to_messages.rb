class AddMessageTimeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_time, :datetime
  end
end
