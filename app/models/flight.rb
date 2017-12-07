class Flight < ActiveRecord::Base
  has_many :bookings
  has_many :passengers, through: :bookings
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  
  
  def date_formated
    start_date.strftime("%-m/%d/%Y")
  end
end
