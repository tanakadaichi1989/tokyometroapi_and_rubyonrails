class TimetablesController < ApplicationController
  include TimetablesHelper
  before_action :set_library
    
  def top
      @timetables = []
      @results = []
  end
  
  def search
      results = set_request_timetable
      
      hash = combination_station_and_direction
      
      number = hash[[params[:station_list],params[:direction_list]]].to_i
      
      @timetables = results[number][params[:date_type]]
      @railway = results[number]["odpt:railway"]
      @station = results[number]["odpt:station"]
      @direction = results[number]["odpt:railDirection"]
      @date_type = params[:date_type]
      
      render('timetables/top')
      
  end
end
