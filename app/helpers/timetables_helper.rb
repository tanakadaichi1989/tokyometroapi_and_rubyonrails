module TimetablesHelper

    def set_train_type(train_type)
        case train_type
        when "odpt.TrainType:TokyoMetro.Local"
            return "普通"
        when "odpt.TrainType:TokyoMetro.Express"
            return "急行"
        when "odpt.TrainType:TokyoMetro.Rapid"
            return "快速"
        when "odpt.TrainType:TokyoMetro.SemiExpress"
            return "準急"
        when "odpt.TrainType:TokyoMetro.TamaExpress"
            return "多摩急行"
        when "odpt.TrainType:TokyoMetro.HolidayExpress"
            return "土休急行"
        when "odpt.TrainType:TokyoMetro.CommuterSemiExpress"
            return "通勤準急"
        when "odpt.TrainType:TokyoMetro.Extra"
            return "臨時"
        when "odpt.TrainType:TokyoMetro.RomanceCar"
            return "特急ロマンスカー"
        when "odpt.TrainType:TokyoMetro.RapidExpress"
            return "快速急行"
        when "odpt.TrainType:TokyoMetro.CommuterExpress"
            return "通勤急行"
        when "odpt.TrainType:TokyoMetro.LimitedExpress"
            return "特急"
        when "odpt.TrainType:TokyoMetro.CommuterLimitedExpress"
            return "通勤特急"
        when "odpt.TrainType:TokyoMetro.CommuterRapid"
            return "通勤快速"
        when "odpt.TrainType:TokyoMetro.ToyoRapid"
            return "東葉快速"
        when "odpt.TrainType:TokyoMetro.F-Liner"
            return "Fライナー"
        when "odpt.TrainType:TokyoMetro.S-TRAIN"
            return "S-TRAIN"
        when "odpt.TrainType:TokyoMetro.Unknown"
            return "不明"
        else
            train_type
        end
    end
    
    def  set_destination(destination)
        case destination
        ##銀座線
        when "odpt.Station:TokyoMetro.Ginza.Shibuya"
            return "渋谷"
        when "odpt.Station:TokyoMetro.Ginza.Asakusa"
            return "浅草"
        when "odpt.Station:TokyoMetro.Ginza.Ueno"
            return "上野"
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
            
        ## 半蔵門線
        when "odpt.Station:Tobu.Isesaki.Kuki"
            return "久喜"
        when "odpt.Station:Tobu.Nikko.MinamiKurihashi"
            return "南栗橋"
        when "odpt.Station:TokyoMetro.Hanzomon.Oshiage"
            return "押上"
        when "odpt.Station:TokyoMetro.Hanzomon.KiyosumiShirakawa"
            return "清澄白河"
        when "odpt.Station:Tobu.Isesaki.TobuDoubutuKouen"
            return "東武動物公園"
        when "odpt.Station:Tobu.Isesaki.KitaKoshigaya"
            return "北越谷"
        when "odpt.Station:TokyoMetro.Hanzomon.Hanzomon"
            return "半蔵門"
        else
            destination
        end
    end
end
