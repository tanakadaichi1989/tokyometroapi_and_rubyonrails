class TimetablesController < ApplicationController
  before_action :set_library
    
  def top
      @timetables = []
      @results = []
  end
  
  def search
      results = set_request_timetable
      
      a = params[:number].to_i
      
      @timetables = results[a][params[:date_type]]
      @railway = results[a]["odpt:railway"]
      @station = results[a]["odpt:station"]
      @direction = results[a]["odpt:railDirection"]
      @date_type = params[:date_type]
      
      puts results[a]
      
      render('timetables/top')
  end
end
