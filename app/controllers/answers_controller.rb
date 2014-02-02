class AnswersController < ApplicationController

  def index
    render json: "Custom metrolink api"
  end

  def show
    @stop1 = find_station(params[:stop1])
    @stop2 = find_station(params[:stop2])
    @delay = params[:delay].to_i

    find_departure_time

    render json: [@stop1, @stop2, @delay]
  end

  private

  def find_station(stop_name)
    Stop.where(:stop_name => stop_name.upcase + " METROLINK STATION")
  end

  def find_departure_time
    #find all trips that contain both stops
    #find the next train that's arriving at a specific time
    #acount for these corner cases
    # => calendar dates
    #    end of the line
    #    transfer red line -> blue line

    @stop1.trips
  end
end
