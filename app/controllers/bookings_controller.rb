class BookingsController < ApplicationController
    def new
        @flight = Flight.find(params[:booking][:flight_id])
        @booking = Booking.new
        @num_passengers = passengers_to_i
        
        @num_passengers.times { @booking.passengers.build}
    end
    
    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else
            render :new
        end
    end
    
    def show
        @booking = Booking.find(params[:id])
        @flight = Flight.find(@booking.flight_id)
    end
    
    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
    
    
    def passengers_to_i
        params[:booking][:num_passengers].to_i
    end
end
