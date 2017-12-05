class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  accepts_nested_attributes_for :from_airport
  accepts_nested_attributes_for :to_airport
end
