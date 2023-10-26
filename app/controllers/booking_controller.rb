class BookingController < ApplicationController

    def index
        @bookings = Booking.all
    end

    def new
        @bookings = Booking.new
    end

    def create
        @bookings = Booking.new(booking_params)
        if @bookings.save
            redirect_to @bookings
        else
            render :new
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:flight_id, :passenger_name, :passenger_email, :no_passenger)
    end
end
