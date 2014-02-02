# == Schema Information
#
# Table name: stop_times
#
#  trip_id             :integer
#  arrival_time        :string(255)
#  departure_time      :string(255)
#  stop_id             :integer
#  stop_sequence       :integer
#  stop_headsign       :string(255)
#  pickup_type         :string(255)
#  drop_off_type       :string(255)
#  shape_dist_traveled :string(255)
#  id                  :integer          not null, primary key
#

class StopTime < ActiveRecord::Base
  belongs_to :stop
  belongs_to :trip
end
