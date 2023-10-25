class SearchForFlightController < ApplicationController
    def search
            @parameter = params[:search]
            @results = CreateFlight.where("lower(depairport) LIKE :search", search: "%#{@parameter}")
    end
end

