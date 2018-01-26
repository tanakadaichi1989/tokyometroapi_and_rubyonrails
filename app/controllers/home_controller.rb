class HomeController < ApplicationController
  def top
      require 'json'
      require 'uri'
      require 'net/http'
      require 'date'
      
      uri = URI.parse("https://api.tokyometroapp.jp/api/v2/datapoints?rdf:type=odpt:TrainInformation&acl:consumerKey=#{ENV["TOKYOMETRO_APIKEY"]}")
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)
      
      @hash = Hash.new()
      
      (0..8).each do |i|
          @hash[result[i]["odpt:railway"]] = result[i]["odpt:trainInformationText"]
      end
      
      puts "-----------------------------------"
      
      puts "《銀座線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Ginza"]
      
      puts "《丸の内線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Marunouchi"]
      
      puts "《日比谷線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Hibiya"]
      
      puts "《東西線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Tozai"]
      
      puts "《千代田線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Chiyoda"]
      
      puts "《有楽町線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Yurakucho"]
      
      puts "《半蔵門線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Hanzomon"]
      
      puts "《南北線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Namboku"]
      
      puts "《副都心線》"
      
      puts @hash["odpt.Railway:TokyoMetro.Fukutoshin"]
      
      puts "-----------------------------------"
      
      
  end
  end
