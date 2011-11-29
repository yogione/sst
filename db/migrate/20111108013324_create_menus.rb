class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :description
      t.string :photo_file_name
      t.float :price
      t.boolean :available_today

      t.timestamps
    end
  end
end
