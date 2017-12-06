class Flight < ActiveRecord::Base
  belongs_to :booking
  has_many :passengers
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  accepts_nested_attributes_for :booking
  
  def date_formated
    start_date.strftime("%-m/%d/%Y")
  end
end
