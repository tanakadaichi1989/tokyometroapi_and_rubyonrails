class TimetablesController < ApplicationController
    require 'json'
    require 'uri'
    require 'net/http'
    
  def top
      @timetables = []
  end
  
  def search
      uri = URI.parse("https://api.tokyometroapp.jp/api/v2/datapoints?rdf:type=odpt:StationTimetable&acl:consumerKey=#{ENV["TOKYOMETRO_APIKEY"]}")
      json = Net::HTTP.get(uri)
      results = JSON.parse(json)
      
      @timetables = results[79]["odpt:weekdays"]
      
      render('timetables/top')
  end
end
