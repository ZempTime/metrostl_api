class DirectionCalculator

  def initialize
    @red_line      =  ["LAMBERT MAIN TRML METROLINK STATION", "LAMBERT EAST TRML METROLINK STATION", 
                       "NORTH HANLEY METROLINK STATION", "UMSL NORTH METROLINK STATION", "UMSL SOUTH METROLINK STATION", 
                       "ROCK ROAD METROLINK STATION", "WELLSTON METROLINK STATION", "DELMAR METROLINK STATION", 
                       "FOREST PARK METROLINK STATION", "CENTRAL WEST END METROLINK STATION", "GRAND METROLINK STATION", 
                       "UNION STA METROLINK STATION", "CIVIC CENTER METROLINK STATION", "STADIUM METROLINK STATION", 
                       "8TH AND PINE METROLINK STATION", "CONVENTION CENTER METROLINK STATION", "ARCH LACLEDES METROLINK STATION", 
                       "EAST RIVERFRONT METROLINK STATION", "5TH & MISSOURI METROLINK STATION", "EMERSON PARK METROLINK STATION", 
                       "JJK CENTER METROLINK STATION", "WASHINGTON PARK METROLINK STATION", "FAIRVIEW HEIGHTS METROLINK STATION", 
                       "MEMORIAL HOSPITAL METROLINK STATION", "SWANSEA METROLINK STATION", "BELLEVILLE METROLINK STATION",
                       "COLLEGE METROLINK STATION", "SHILOH-SCOTT METROLINK STATION"]

    @red_line_only =  ["MEMORIAL HOSPITAL METROLINK STATION", "SWANSEA METROLINK STATION", "BELLEVILLE METROLINK STATION",
                       "COLLEGE METROLINK STATION", "SHILOH-SCOTT METROLINK STATION", "LAMBERT MAIN TRML METROLINK STATION", "LAMBERT EAST TRML METROLINK STATION", 
                       "NORTH HANLEY METROLINK STATION", "UMSL NORTH METROLINK STATION", "UMSL SOUTH METROLINK STATION", 
                       "ROCK ROAD METROLINK STATION", "WELLSTON METROLINK STATION", "DELMAR METROLINK STATION"] 


    @red_line_east  = ["MEMORIAL HOSPITAL METROLINK STATION", "SWANSEA METROLINK STATION", "BELLEVILLE METROLINK STATION",
                       "COLLEGE METROLINK STATION", "SHILOH-SCOTT METROLINK STATION"]

    @red_line_west  = ["LAMBERT MAIN TRML METROLINK STATION", "LAMBERT EAST TRML METROLINK STATION", 
                       "NORTH HANLEY METROLINK STATION", "UMSL NORTH METROLINK STATION", "UMSL SOUTH METROLINK STATION", 
                       "ROCK ROAD METROLINK STATION", "WELLSTON METROLINK STATION", "DELMAR METROLINK STATION"] 

    @blue_line      = ["SHREWSBURY METROLINK STATION", "SUNNEN METROLINK STATION", "MAPLEWOOD METROLINK STATION", 
                       "BRENTWOOD METROLINK STATION", "RICHMOND HEIGHTS METROLINK STATION", "CLAYTON METROLINK STATION", 
                       "FORSYTH METROLINK STATION", "U CITY BIG BEND METROLINK  STATION", "SKINKER METROLINK STATION", 
                       "FOREST PARK METROLINK STATION", "CENTRAL WEST END METROLINK STATION", "GRAND METROLINK STATION", 
                       "UNION STA METROLINK STATION", "CIVIC CENTER METROLINK STATION", "STADIUM METROLINK STATION", 
                       "8TH AND PINE METROLINK STATION", "CONVENTION CENTER METROLINK STATION", "ARCH LACLEDES METROLINK STATION", 
                       "EAST RIVERFRONT METROLINK STATION", "5TH & MISSOURI METROLINK STATION", "EMERSON PARK METROLINK STATION", 
                       "JJK CENTER METROLINK STATION", "WASHINGTON PARK METROLINK STATION", "FAIRVIEW HEIGHTS METROLINK STATION"]

    @blue_line_west = ["SHREWSBURY METROLINK STATION", "SUNNEN METROLINK STATION", "MAPLEWOOD METROLINK STATION", 
                       "BRENTWOOD METROLINK STATION", "RICHMOND HEIGHTS METROLINK STATION", "CLAYTON METROLINK STATION", 
                       "FORSYTH METROLINK STATION", "U CITY BIG BEND METROLINK  STATION", "SKINKER METROLINK STATION"] 


    @purple_line    = ["FOREST PARK METROLINK STATION", "CENTRAL WEST END METROLINK STATION", "GRAND METROLINK STATION", 
                       "UNION STA METROLINK STATION", "CIVIC CENTER METROLINK STATION", "STADIUM METROLINK STATION", 
                       "8TH AND PINE METROLINK STATION", "CONVENTION CENTER METROLINK STATION", "ARCH LACLEDES METROLINK STATION", 
                       "EAST RIVERFRONT METROLINK STATION", "5TH & MISSOURI METROLINK STATION", "EMERSON PARK METROLINK STATION", 
                       "JJK CENTER METROLINK STATION", "WASHINGTON PARK METROLINK STATION", "FAIRVIEW HEIGHTS METROLINK STATION"]
  end

  def blue_line_west
    @blue_line_west
  end
  
  def red_line_west
    @red_line_west
  end

  def blue_line
    @blue_line
  end

  def red_line
    @red_line
  end

  def purple_line
    @purple_line
  end

  def red_line_east
    @red_line_east
  end
  
  def red_line_only
    @red_line_only
  end

  EASTBOUND = 0
  WESTBOUND = 1

  # pass in two stations, return direction, line taken
  # returns [red or blue or either, 0 or 1]

  def calculate_line(stop1, stop2)
    if @purple_line.include?(stop1) && @purple_line.include?(stop2)
      "either"
    elsif @purple_line.include?(stop1) && @blue_line_west.include?(stop2)
      "blue"
    elsif @purple_line.include?(stop1) && @red_line_only.include?(stop2)
      "red"
    elsif @red_line_only.include?(stop1)
      "red"
    elsif @blue_line_west.include?(stop1)
      "blue"
    end
  end



  # model not inherit activerecord
  # set up rspec tests

end
