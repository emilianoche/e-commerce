class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code
      t.integer :price
      t.string :description

      t.timestamps null: false
    end
       add_attachment :products, :image
  end
end
