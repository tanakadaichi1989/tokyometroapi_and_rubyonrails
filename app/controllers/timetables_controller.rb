class TimetablesController < ApplicationController
    require 'json'
    require 'uri'
    require 'net/http'
    
  def top
      @timetables = []
  end
  
  def search
      results = set_request_timetable
      
      a = 302
      
      @timetables = results[a]["odpt:weekdays"]
      puts results[a]
      
      render('timetables/top')
  end
end
