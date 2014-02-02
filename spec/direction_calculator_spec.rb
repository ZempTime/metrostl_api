require 'spec_helper'

describe DirectionCalculator do

  # Takes two station names
  # Returns [direction, line taken]

  before :each do 
    @dc = DirectionCalculator.new
  end

  describe "#new" do
    it "initializes correctly" do
    end
  end

  describe "#calculate_line" do
    # If you get on a R or B-only station, the line will automatically be R or B
    # If you get on a P station, line will be determined by Exiting station
    # Ro, Bo, P -> R, P -> B, P -> P will have to check both for soonest


    it "boards Red only" do
      @dc.calculate_line(@dc.red_line_east.sample, @dc.purple_line.sample).should eql "red"
    end

    it "boards Blue only" do
      @dc.calculate_line(@dc.blue_line_west.sample, @dc.purple_line.sample).should eql "blue"
    end

    it "boards Purple, exits Red only" do
      @dc.calculate_line(@dc.purple_line.sample, @dc.red_line_east.sample).should eql "red"
    end

    it "boards Purple, exits Blue only" do
      @dc.calculate_line(@dc.purple_line.sample, @dc.blue_line_west.sample).should eql "blue"
    end

    it "boards Purple, exits Purple" do 
      @dc.calculate_line(@dc.purple_line.sample, @dc.purple_line.sample).should eql "either"
    end

    it "boards Red Only, exits Blue Only" do
      @dc.calculate_line(@dc.red_line_west.sample, @dc.blue_line_west.sample).should eql "red"
    end
  end

end
