class Booking < ActiveRecord::Base
  has_one :flight
  has_many :passengers
end
