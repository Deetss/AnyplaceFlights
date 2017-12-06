class Booking < ActiveRecord::Base
  has_one :flight
end
