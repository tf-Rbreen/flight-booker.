class BookingsController < ApplicationController
    def index
        @booking = Booking.all
    end

    def edit
    end

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

    def update
        respond_to do |format|
          if @booking.update(booking_params)
            format.html { redirect_to booking_url(@create_flight), notice: "Booking details were successfully updated." }
            format.json { render :show, status: :ok, location: @booking }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @booking.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @booking.destroy!

        respond_to do |format|
          format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
          format.json { head :no_content }
        end
      end
end

private

def bookings_params
    params.permit(:flightid, :fname, :sname, :email, :passportnum, :dateofbirth)
end

end
