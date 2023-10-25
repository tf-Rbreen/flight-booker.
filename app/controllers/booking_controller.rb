class BookingController < ApplicationController
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(bookings_params)
    	if @booking.save
            session[:booking_id] = @booking.id
    		redirect_to root_path, notice: "successfully created booking"
    	else
    		render :new
    end
end

private

def bookings_params
    params.permit(:flightid, :fname, :sname, :email, :passportnum, :dateofbirth, :gender)
end

end
