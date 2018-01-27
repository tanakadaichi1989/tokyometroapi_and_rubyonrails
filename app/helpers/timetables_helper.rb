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
            when "odpt.Station:TokyoMetro.Fukutoshin.Wakoshi"
                return "和光市"
            when "odpt.Station:TokyoMetro.Fukutoshin.Ikebukuro"
                return "池袋（副都心線）"
            when "odpt.Station:TokyoMetro.Fukutoshin.ShinjukuSanchome"
                return "新宿三丁目"
            when "odpt.Station:Tobu.Tojo.Kawagoeshi"
                return "川越市"
            when "odpt.Station:Seibu.Ikebukuro.ShakujiiKoen"
                return "石神井公園"
            when "odpt.Station:Seibu.Ikebukuro.Kotesashi"
                return "小手指"
            when "odpt.Station:Tobu.Tojo.ShinrinKoen"
                return "森林公園"
            when "odpt.Station:Seibu.Ikebukuro.Hoya"
                return "保谷"
            when "odpt.Station:Seibu.Ikebukuro.Kiyose"
                return "清瀬"
            when "odpt.Station:Seibu.Ikebukuro.Tokorozawa"
                return "所沢"
            when "odpt.Station:Tobu.Tojo.Shiki"
                return "志木"
            when "odpt.Station:Seibu.Ikebukuro.Hanno"
                return "飯能"
            when "odpt.Station:Minatomirai.Minatomirai.MotomachiChukagai"
                return "元町・中華街"
            when "odpt.Station:Tokyu.Toyoko.Kikuna"
                return "菊名"
            when "odpt.Station:Tokyu.Toyoko.MusashiKosugi"
                return "武蔵小杉"
            when "odpt.Station:Tokyu.Toyoko.Yokohama"
                return "横浜"
            when "odpt.Station:Tokyu.Toyoko.Motosumiyoshi"
                return "元住吉"
            when "odpt.Station:TokyoMetro.Ginza.Asakusa"
                return "浅草"
            when "odpt.Station:TokyoMetro.Ginza.Ueno"
                return "上野"
            when "odpt.Station:TokyoMetro.Ginza.Shibuya"
                return "渋谷"
            when "odpt.Station:TokyoMetro.Marunouchi.Ikebukuro"
                return "池袋"
            when "odpt.Station:TokyoMetro.Marunouchi.Myogadani"
                return "茗荷谷"
            when "odpt.Station:TokyoMetro.Marunouchi.ShinjukuSanchome"
                return "新宿三丁目"
            when "odpt.Station:TokyoMetro.MarunouchiBranch.NakanoFujimicho"
                return "中野富士見"
            when "odpt.Station:TokyoMetro.Marunouchi.Ogikubo"
                return "荻窪"
            when "odpt.Station:TokyoMetro.Marunouchi.Shinjuku"
                return "新宿"
            when "odpt.Station:TokyoMetro.Marunouchi.Korakuen"
                return "後楽園"
            when "odpt.Station:TokyoMetro.MarunouchiBranch.Honancho"
                return "方南町"
            when "odpt.Station:TokyoMetro.Marunouchi.NakanoSakaue"
                return "中野坂上"
            when "odpt.Station:Tobu.Isesaki.KitaKoshigaya"
                return "北越谷"
            when "odpt.Station:Tobu.Isesaki.TobuDoubutuKouen"
                return "東武動物公園"
            when "odpt.Station:TokyoMetro.Hibiya.KitaSenju"
                return "北千住"
            when "odpt.Station:Tobu.Isesaki.Takenotsuka"
                return "竹ノ塚"
            when "odpt.Station:TokyoMetro.Hibiya.MinamiSenju"
                return "南千住"
            when "odpt.Station:Tobu.Isesaki.KitaKasukabe"
                return "北春日部"
            when "odpt.Station:Tobu.Nikko.MinamiKurihashi"
                return "南栗橋"
            when "odpt.Station:TokyoMetro.Hibiya.HiroO"
                return "広尾"
            when "odpt.Station:TokyoMetro.Hibiya.NakaMeguro"
                return "中目黒"
            when "odpt.Station:TokyoMetro.Hibiya.Kasumigaseki"
                return "霞ヶ関"
            when "odpt.Station:TokyoMetro.Hibiya.Roppongi"
                return "六本木"
            when "odpt.Station:TokyoMetro.Tozai.Nakano"
                return "中野"
            when "odpt.Station:JR-East.Chuo.Mitaka"
                return "三鷹"
            when "odpt.Station:ToyoRapidRailway.ToyoRapid.YachiyoMidorigaoka"
                return "八千代緑が丘"
            when "odpt.Station:TokyoMetro.Tozai.Kudanshita"
                return "九段下"
            when "odpt.Station:TokyoMetro.Tozai.NishiFunabashi"
                return "西船橋"
            when "odpt.Station:ToyoRapidRailway.ToyoRapid.ToyoKatsutadai"
                return "東葉勝田台"
            when "odpt.Station:JR-East.ChuoChikatetsuTozai.Tsudanuma"
                return "津田沼"
            when "odpt.Station:TokyoMetro.Tozai.Myoden"
                return "妙典"
            when "odpt.Station:TokyoMetro.Tozai.Toyocho"
                return "東陽町"
            when "odpt.Station:JR-East.Joban.Toride"
                return "取手"
            when "odpt.Station:JR-East.Joban.Kashiwa"
                return "柏"
            when "odpt.Station:JR-East.Joban.Abiko"
                return "我孫子"
            when  "odpt.Station:TokyoMetro.Chiyoda.Ayase"
                return "綾瀬"
            when "odpt.Station:JR-East.Joban.Matsudo"
                return "松戸"
            when "odpt.Station:TokyoMetro.Chiyoda.YoyogiUehara"
                return "代々木上原"
            when "odpt.Station:TokyoMetro.Chiyoda.MeijiJingumae"
                return "明治神宮前（原宿）"
            when "odpt.Station:TokyoMetro.Chiyoda.Kasumigaseki"
                return "霞ヶ関"
            when "odpt.Station:Odakyu.Odawara.HonAtsugi"
                return "本厚木"
            when "odpt.Station:Odakyu.Tama.Karakida"
                return "唐木田"
            when "odpt.Station:Odakyu.Odawara.HakoneYumoto"
                return "箱根湯本"
            when "odpt.Station:TokyoMetro.Chiyoda.KitaAyase"
                return "北綾瀬"
            when "odpt.Station:TokyoMetro.Yurakucho.Wakoshi"
                return "和光市"
            when "odpt.Station:TokyoMetro.Yurakucho.Ikebukuro"
                return "池袋（有楽町線)"
            when "odpt.Station:TokyoMetro.Yurakucho.ShinKiba"
                return "新木場"
            when "odpt.Station:TokyoMetro.Yurakucho.Toyosu"
                return "豊洲"
            when "odpt.Station:TokyoMetro.Hanzomon.Suitengumae"
                return "水天宮前"
            when "odpt.Station:Tokyu.DenEnToshi.ChuoRinkan"
                return "中央林間"
            when "odpt.Station:TokyoMetro.Hanzomon.Nagatacho"
                return "永田町"
            when "odpt.Station:TokyoMetro.Hanzomon.AoyamaItchome"
                return "青山一丁目"
            when "odpt.Station:Tokyu.DenEnToshi.Nagatsuta"
                return "長津田"
            when "odpt.Station:Tokyu.DenEnToshi.Saginuma"
                return "鷺沼"
            when "odpt.Station:Tobu.Isesaki.Kuki"
                return "久喜"
            when "odpt.Station:TokyoMetro.Hanzomon.Oshiage"
                return "押上"
            when "odpt.Station:TokyoMetro.Hanzomon.KiyosumiShirakawa"
                return "清澄白河"
            when "odpt.Station:TokyoMetro.Hanzomon.Hanzomon"
                return "半蔵門"
            when "odpt.Station:TokyoMetro.Namboku.ShirokaneTakanawa"
                return "白金高輪"
            when "odpt.Station:Tokyu.Meguro.Hiyoshi"
                return "日吉"
            when "odpt.Station:TokyoMetro.Namboku.AzabuJuban"
                return "麻布十番"
            when "odpt.Station:Tokyu.Meguro.Okusawa"
                return "奥沢"
            when "odpt.Station:TokyoMetro.Namboku.Ichigaya"
                return "市ヶ谷"
            when "odpt.Station:SaitamaRailway.SaitamaRailway.UrawaMisono"
                return "浦和美園"
            when "odpt.Station:SaitamaRailway.SaitamaRailway.Hatogaya"
                return "鳩ヶ谷"
            when "odpt.Station:TokyoMetro.Namboku.OjiKamiya"
                return "王子神谷"
            when "odpt.Station:TokyoMetro.Namboku.AkabaneIwabuchi"
                return "赤羽岩淵"
            when "odpt.Station:Toei.Mita.NishiTakashimadaira"
                return "西高島平"
            when "odpt.Station:Toei.Mita.Takashimadaira"
                return "高島平"
            when "odpt.Station:TokyoMetro.Namboku.Komagome"
                return "駒込"
            when "odpt.Station:Seibu.SeibuChichibu.SeibuChichibu"
                return "西武秩父"
            else
                destination
        end
    end
end
