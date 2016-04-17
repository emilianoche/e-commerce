class CreateBrandsProducts < ActiveRecord::Migration
  def change
    create_table :brands_products, :id => false do |t|
     t.references :brand, index: true
     t.references :product, index: true
    end    
  end
end
