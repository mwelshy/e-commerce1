class CreateProductsWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :products_wishlists do |t|
      t.integer :product_id
      t.integer :wishlist_id

      t.timestamps
    end
  end
end
