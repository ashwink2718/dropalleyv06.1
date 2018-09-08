class AddStatusToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :status_message, :string
  	add_column :orders, :status_icon, :string
  end
end
