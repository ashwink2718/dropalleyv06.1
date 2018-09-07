class ReorderColumnsInUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :email, :string, after: :name 
  end
end
