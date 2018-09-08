class ChangeColumnDefaultForStatusIconInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :orders, :status_icon, :"envelope-open"
  end
end
