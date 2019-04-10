class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :address
      t.string :price
      t.string :cuisine
      t.string :food_type
      t.string :photo_url

      t.timestamps
    end
  end
end
