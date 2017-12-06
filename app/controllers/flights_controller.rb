class FlightsController < ApplicationController
    def index
        @flight = Flight.new
        @flights = Flight.all
        @results = Flight.all.where(results_param)
    end
    
    def results_param
        params.require(:flight).permit(:from_airport_id, :to_airport_id, :start_date)
    end
end
