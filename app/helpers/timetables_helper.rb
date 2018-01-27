module TimetablesHelper
    def set_train_type(train_type)
        case train_type
        when "odpt.TrainType:TokyoMetro.Local"
            return "普通"
        else
            return train_type
        end
    end
    
    def  set_destination(destination)
        case destination
        ##千代田線
        when "odpt.Station:JR-East.Joban.Toride"
            return "取手"
        when "odpt.Station:JR-East.Joban.Kashiwa"
            return "柏"
        when "odpt.Station:JR-East.Joban.Abiko"
            return "我孫子"
        when "odpt.Station:JR-East.Joban.Matsudo"
            return "松戸"
        when "odpt.Station:TokyoMetro.Chiyoda.Ayase"
            return "綾瀬"
        else
            destination
        end
    end
end
