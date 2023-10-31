class CreateFlightsController < ApplicationController
  before_action :set_create_flight, only: [:show, :edit, :update, :destroy ]

  def index
    @create_flights = CreateFlight.all
  end

  def show
  end

  def new
    @create_flights = CreateFlight.new
  end

  def edit
  end

  def create
    @create_flights = CreateFlight.new(create_flight_params)

    respond_to do |format|
      if @create_flights.save
        format.html { redirect_to create_flight_url(@create_flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @create_flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @create_flights.update(create_flight_params)
        format.html { redirect_to create_flight_url(@create_flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @create_flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @create_flights.destroy!

    respond_to do |format|
      format.html { redirect_to create_flights_url, notice: "Create flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_create_flight
      @create_flights = CreateFlight.find(params[:id])
    end

    def create_flight_params
      params.require(:create_flight).permit(:depairport, :arrairport, :datetime)
    end

    def search_params
      params.require(:create_flight).permit(:depairport,:arrairport,:datetime )
end
end
