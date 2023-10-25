class AboutController < ApplicationController
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(bookings_params)
    	if @booking.save
            session[:bookings_id] = @bookings.id
    		redirect_to root_path, notice: "successfully created booking"
    	else
    		render :new
        end
    end
end