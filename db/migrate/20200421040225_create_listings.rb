class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :kind
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :location
      t.float :price
      t.string :photos
      t.boolean :booked, default: false

      t.timestamps
    end
  end
end
