module ApplicationHelper
    
    def set_library
        require 'json'
        require 'uri'
        require 'net/http'
        require 'date'
    end
    
    def full_page(page_title="")
        base_title = "TokyoMetroAPI & Ruby on Rails"
        
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
    
    def now_time
        DateTime.now.strftime("%Y/%m/%d %H:%M")
    end
    
    def set_request_train_information
        uri = URI.parse("https://api.tokyometroapp.jp/api/v2/datapoints?rdf:type=odpt:TrainInformation&acl:consumerKey=#{ENV["TOKYOMETRO_APIKEY"]}")
        json = Net::HTTP.get(uri)
        results = JSON.parse(json)
        
        return results
    end
    
    def set_request_timetable
        uri = URI.parse("https://api.tokyometroapp.jp/api/v2/datapoints?rdf:type=odpt:StationTimetable&acl:consumerKey=#{ENV["TOKYOMETRO_APIKEY"]}")
        json = Net::HTTP.get(uri)
        results = JSON.parse(json)
    end
    
end
