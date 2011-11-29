class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
