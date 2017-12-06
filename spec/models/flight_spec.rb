require "rails_helper"

RSpec.describe "Flight" do
    describe "information" do
        let(:to_airport) { Airport.new(name: "DFW", code: "DFW") }
        let(:from_airport) { Airport.new(name: "Atlanta", code: "ATL") }
        let(:flight) { Flight.new(to_airport: to_airport, from_airport: from_airport, start_date: DateTime.new(2001, 9, 11)) }
    
        it "knows its to_airport" do
            expect(flight.to_airport).to eq(to_airport)
        end
        
        it "knows its from_airport" do
            expect(flight.from_airport).to eq(from_airport)
        end
        
        it "formats the flight date" do
            expect(flight.date_formated).to eq("9/11/2001")
        end
        
    end

end