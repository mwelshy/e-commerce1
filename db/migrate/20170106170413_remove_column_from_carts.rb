class RemoveColumnFromCarts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :carts, :product_id
  end
end
