class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message_text

      t.timestamps
    end
  end
end
