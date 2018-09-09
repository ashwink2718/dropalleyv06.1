class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
    	t.string :brand_name
    	t.string :image
    end
  end
end
