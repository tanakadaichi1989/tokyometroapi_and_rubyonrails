require "date"

module ApplicationHelper
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
end
