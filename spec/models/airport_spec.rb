require "rails_helper"

RSpec.describe "Airport" do
    let(:to_airport) { Airport.new(name: "DFW", code: "DFW") }
    let(:from_airport) { Airport.new(name: "Atlanta", code: "ATL") }
    let(:flight) { Flight.create!(to_airport: to_airport, from_airport: from_airport) }
    
    it "knows its departing flights" do
        expect(from_airport.departing_flights).to match([flight])
    end
    
    it "knows its departing flights" do
        expect(to_airport.arriving_flights).to match([flight])
    end
end