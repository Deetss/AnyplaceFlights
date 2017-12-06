class FlightsController < ApplicationController
    def index
        @flight = Flight.new
        @flights = Flight.all
        @results = Flight.all.where(results_params) unless params[:flight].nil?
        
    end
    
    
    def results_params
        params.require(:flight).permit(:from_airport_id, :to_airport_id, :start_date)
    end
end
