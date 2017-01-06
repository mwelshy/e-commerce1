class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :price
      t.text :description
      t.string :department

      t.timestamps
    end
  end
end
