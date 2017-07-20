class HomeController < ApplicationController
  def top
      require 'json'
      require 'uri'
      require 'net/http'
      require 'date'
      
      
      year = Time.now.year.to_s
      
      if Time.now.month.to_s.length == 2
          month = Time.now.month.to_s
          else
          month = '0' + Time.now.month.to_s
      end
      
      if Time.now.day.to_s.length == 2
          day = Time.now.day.to_s
          else
          day = '0' + Time.now.day.to_s
      end
      
      if Time.now.hour.to_s.length == 2
          hour = Time.now.hour.to_s + 9
          else
          hour = '0' + Time.now.hour.to_s
      end
      
      if Time.now.min.to_s.length == 2
          min = Time.now.min.to_s
          else
          min = '0' + Time.now.min.to_s
      end
      
      if Time.now.sec.to_s.length == 2
          sec = Time.now.sec.to_s
          else
          sec = '0' + Time.now.sec.to_s
      end
      
      
      @now_time = year + "/" + month + "/" + day + "  " + hour + ":" + min + ":" + sec
      
      
      consumerkey = Rails.application.secrets.tokyometro_key
      
      uri = URI.parse("https://api.tokyometroapp.jp/api/v2/datapoints?rdf:type=odpt:TrainInformation&acl:consumerKey=#{consumerkey}")
      
      json = Net::HTTP.get(uri)
      @result = JSON.parse(json)
      
      puts @result[0]
      
      (0..8).each do |i|
          puts @result[i]["odpt:railway"] + "  " + @result[i]["odpt:trainInformationText"]
      end
      
      
  end

  end
