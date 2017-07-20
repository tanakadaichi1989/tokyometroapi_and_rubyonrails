class HomeController < ApplicationController
  def top
      require 'json'
      require 'uri'
      require 'net/http'
      require 'date'
      
      
      
      
      
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
