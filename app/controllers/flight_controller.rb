class FlightController < ApplicationController
    def index
        @flight = Flight.new
        @flights = Flight.all
    end
end
