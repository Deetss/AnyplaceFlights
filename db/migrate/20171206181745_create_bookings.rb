class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :flight, index: true, foreign_key: true
      t.integer :num_passengers

      t.timestamps null: false
    end
  end
end
