class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products, :id => false do |t|
    	t.references :category, index: true
    	t.references :product , index: true
    end
  end
end
