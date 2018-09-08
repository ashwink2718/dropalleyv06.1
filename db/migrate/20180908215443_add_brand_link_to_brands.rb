class AddBrandLinkToBrands < ActiveRecord::Migration[5.2]
  def change
  	add_column :brands , :brand_link, :string 
  end
end
