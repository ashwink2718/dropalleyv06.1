class ChangeColumnDefaultForStatusMessageInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :orders, :status_message, :"Order Received. Awaiting Confirmation"
  end
end
