class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :name
      t.integer :phone
      t.string :timezone
      t.integer :user_id

      t.timestamps
    end
  end
end
