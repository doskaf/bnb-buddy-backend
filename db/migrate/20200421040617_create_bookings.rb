class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :listing_id
      t.string :guest
      t.string :check_in
      t.string :check_out

      t.timestamps
    end
  end
end
