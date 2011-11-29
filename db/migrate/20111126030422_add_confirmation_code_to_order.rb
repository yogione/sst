class AddConfirmationCodeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :confirmation_code, :string
  end
end
