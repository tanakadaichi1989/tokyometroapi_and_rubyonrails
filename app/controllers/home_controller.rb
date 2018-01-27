class HomeController < ApplicationController
  before_action :set_library

  def top
      results = set_request_train_information
      
      @hash = Hash.new()
      
      (0..8).each do |i|
          @hash[results[i]["odpt:railway"]] = results[i]["odpt:trainInformationText"]
      end
  end
end
