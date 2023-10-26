class CreateFlightsController < ApplicationController
  before_action :set_create_flight, only: %i[ show edit update destroy ]


  def index
    @create_flights = CreateFlight.all
  end

  def show
  end

  def new
    @createflight = CreateFlight.new
  end

  def edit
  end

  def search
    @parameter = params[:search]
    @results = CreateFlight.all.where("dep_airport LIKE :search", search: "#{@parameter}%")
  end

  # POST /flights or /flights.json
  def create
    @createflight = CreateFlight.new(flight_params)

    respond_to do |format|
      if @createflight.save
        format.html { redirect_to flight_url(@createflight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @createflight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @createflight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @createflight.update(flight_params)
        format.html { redirect_to flight_url(@createflight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @createflight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @createflight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @createflight.destroy!

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @createflight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def createflight_params
      params.require(:flight).permit(:dep_airport, :arr_airport, :dep_time, :duration)
    end
end
