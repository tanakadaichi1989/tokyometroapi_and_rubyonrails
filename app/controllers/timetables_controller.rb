class TimetablesController < ApplicationController
  before_action :set_library
    
  def top
      @timetables = []
      @results = []
  end
  
  def search
      results = set_request_timetable
      
      a = params[:number].to_i
      
      @timetables = results[a]["odpt:weekdays"]
      @railway = results[a]["odpt:railway"]
      @station = results[a]["odpt:station"]
      @direction = results[a]["odpt:railDirection"]
      puts results[a]
      
      render('timetables/top')
  end
end
