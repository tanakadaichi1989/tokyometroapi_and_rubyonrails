class TimetablesController < ApplicationController
  before_action :set_library
    
  def top
      @timetables = []
  end
  
  def search
      results = set_request_timetable
      
      a = params[:number].to_i
      
      @timetables = results[a]["odpt:weekdays"]
      puts results[a]
      
      render('timetables/top')
  end
end
