class HomeController < ApplicationController
    
    require 'json'
    require 'uri'
    require 'net/http'
    require 'date'


  def top
      
      results = set_request_train_information
      
      @hash = Hash.new()
      
      (0..8).each do |i|
          @hash[results[i]["odpt:railway"]] = results[i]["odpt:trainInformationText"]
      end
      
  end
end
