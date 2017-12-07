class RemoveNumPassengersFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :num_passengers
  end
end
