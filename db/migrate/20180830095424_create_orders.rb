class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.string :name
    	t.string :email
    	t.string :apartment
    	t.string :street_name
    	t.string :city
    	t.string :zipcode
    	t.string :phone_number
    	t.string :product1
    	t.string :size1
    	t.string :product2
    	t.string :size2
    	t.string :product3
    	t.string :size3
    	t.string :product4
    	t.string :size4
    	t.string :product5
    	t.string :size5
    	t.string :comment
    	t.timestamps
    end
  end
end
