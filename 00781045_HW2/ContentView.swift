//
//  ContentView.swift
//  00781045_HW2
//
//  Created by User09 on 2020/10/19.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        HStack {
            Button(action: {
                UIApplication.shared.setAlternateIconName(nil)
            }) {
                Image("狗")
                    .resizable()
                    .scaledToFit()
            }
            Button(action: {
                UIApplication.shared.setAlternateIconName("rabit")
            }) {
                Image("兔子")
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(height: 200)
    }
}
struct firstPage: View{
    let animals = [ "兔子","鳥","狐狸","陸地動物","海洋動物"]
    var body: some View{
            NavigationView{
                TabView{
                    List{
                        ScrollView(.horizontal) {
                                    let columns = [GridItem()]
                                    LazyVGrid(columns: columns) {
                                        HStack{
                                            NavigationLink(destination: rabitPage()){
                                                VStack {
                                                    Image("兔子")
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(width: 150, height: 150)
                                                        .clipped()
                                                        .padding()
                                                    Text("兔子")
                                                        .offset(x:0, y:-10)
                                                        .font(.title)
                                                }
                                                .overlay(
                                                    Image(systemName: "1.circle.fill")
                                                        .font(.largeTitle)
                                                    , alignment: .topLeading)
                                            }
                                            VStack {
                                                Image("鳥")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 150, height: 150)
                                                    .clipped()
                                                    .padding()
                                                Text("鳥")
                                                    .offset(x:0, y:-10)
                                                    .font(.title)
                                            }
                                            .overlay(
                                                Image(systemName: "2.circle.fill")
                                                    .font(.largeTitle)
                                                , alignment: .topLeading)
                                            VStack {
                                                Image("狐狸")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 150, height: 150)
                                                    .clipped()
                                                    .padding()
                                                Text("狐狸")
                                                    .offset(x:0, y:-10)
                                                    .font(.title)
                                            }
                                            .overlay(
                                                Image(systemName: "3.circle.fill")
                                                    .font(.largeTitle)
                                                , alignment: .topLeading)
                                            VStack {
                                                Image("海洋動物")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 150, height: 150)
                                                    .clipped()
                                                    .padding()
                                                Text("海洋動物")
                                                    .offset(x:0, y:-10)
                                                    .font(.title)
                                            }
                                            .overlay(
                                                Image(systemName: "4.circle.fill")
                                                    .font(.largeTitle)
                                                , alignment: .topLeading)
                                            VStack {
                                                Image("陸地動物")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 150, height: 150)
                                                    .clipped()
                                                    .padding()
                                                Text("陸地動物")
                                                    .offset(x:0, y:-10)
                                                    .font(.title)
                                            }
                                            .overlay(
                                                Image(systemName: "5.circle.fill")
                                                    .font(.largeTitle)
                                                , alignment: .topLeading)
                                        }
                                    }
                            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing).opacity(0.3))
                        }
                        NavigationLink(destination: dogPage()){
                        Image("狗")
                            .offset(x: 0, y: 0)
                            .mask(
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .scaledToFit()
                            )
                        }.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing).opacity(0.3))
                        NavigationLink(destination: tempCatPage()){
                        Image("貓")
                            .offset(x: 0, y: 60)
                            .mask(
                                Image(systemName: "square.fill")
                                    .resizable()
                                    .scaledToFit()
                            )
                            .offset(x: 20, y: 0)
                        }.background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing).opacity(0.3))
                    }
                    .tabItem { Image(systemName:"house.fill")
                        Text("homepage")}
                    IconView()
                        .tabItem { Image(systemName:"pencil.circle.fill")
                            Text("change icon")}
                }
                .navigationTitle(Text("來看看你喜歡的動物吧"))
            }
    }
}
struct goldenRetriever: View{
    var body: some View{
        TabView{
            VStack{
                HStack{
                    Text("This is my love")
                        .font(.custom("Nagurigaki-Crayon", size: 30))
                    Image(systemName: "heart")
                }
                Image("黃金獵犬")
                .resizable()
                .scaledToFit()
                Text("黃金獵犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E9%BB%83%E9%87%91%E7%8D%B5%E7%8A%AC&hl=zh-CN&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjosaa0o8DsAhWYyosBHS0VDa8Q_AUoAXoECAUQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("黃金獵犬（英語：Golden Retriever）是比較現代且十分流行的狗的品種。牠是作為用來在獵捕野禽的尋回犬而培養出來的一種單獵犬，游泳的續航力極佳。現今，牠是最常見的家犬之一，因為黃金獵犬很容易養、有耐心，對主人要求亦不多，只要定期的運動，食物和獸醫體檢就可以了。黃金獵犬的獨特之處在於它討人喜歡的性格。")
                }
                Section(header: Text("外表")){
                    Text("這是一種大型犬種，其外觀上和短毛黃色拉布拉多在尺寸，形狀，和毛色上相似，年輕的時候更是如此，而淺色的黃金獵犬也特別相似。最顯見的區別是黃金獵犬奢華的毛皮。")
                    Text("本身分為淡奶油及深咖啡二大類的顏色。")
                    Text("黃金獵犬在9個月到一年2個月時達到最大身高，在約兩歲時達到最大體重。雖然體格上它在兩歲成熟，精神上它要三歲以上才能完全成熟．")
                    
                }
                Section(header: Text("壽命")){
                    Text("15－20歲")
                }
                Section(header: Text("性格")){
                    Text("黃金獵犬很活躍，喜歡玩，但也出奇的耐心，可以靜靜地坐幾個小時不動，就好似打獵時在狩獵偽裝（Hunting blind）底下等獵物一樣。可能是打獵的遺傳特質，跳進跳出小船、游泳亦喜歡。")
                    Text("它們的智力，對人的感情，和他們對小孩的容忍力都很出眾。從另一方面來講，他們需要人經常陪伴才能快樂。他們在服從測驗中表現良好並且是優秀的嚮導犬。")
                    Text("黃金獵犬喜愛接物。接回一根扔出去的棍子、網球、或者飛盤可以讓一條黃金獵犬玩上幾個小時都不膩，特別是還需要涉水的時候。")
                }
                Section(header: Text("更多資訊")){
                    Link("如何分辨拉布拉多和黃金獵犬", destination: URL(string: "https://kknews.cc/pet/4qv5kmx.html")!)
                    Link("點我看更多黃金獵犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E9%87%91%E6%AF%9B%E5%AF%BB%E5%9B%9E%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct samoyed: View{
    var body: some View{
        TabView{
            VStack{
                Image("薩摩耶")
                .resizable()
                .scaledToFit()
                Text("薩摩耶")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E8%96%A9%E6%91%A9%E8%80%B6&hl=zh-CN&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjG1Negp8DsAhUDG6YKHR9HBF8Q_AUoAXoECAUQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("薩摩耶犬（英語：Samoyed）是狐狸犬、雪橇犬家族的一員，原是西伯利亞的原住民薩摩耶族培育出的犬種。因看起來永遠在笑的樣子又喜歡親近人，而被稱為「微笑天使」。")
                }
                Section(header: Text("外表")){
                    Text("原有多種毛色，黑、黑白、黑褐，但十九世紀時毛皮商人認為白色會最受歡迎而大量輸出白薩摩耶犬到歐美。今日所見的純種薩摩耶犬多是白色系。")
                    
                }
                Section(header: Text("壽命")){
                    Text("12－14歲")
                }
                Section(header: Text("性格")){
                    Text("聰明，溫和，忠誠，適應性強，機警，充滿活力，樂於服務，友好而富有激情，勇敢而樂於嘗試，真誠而不會去懷疑，進攻性不強。")
                }
                Section(header: Text("更多資訊")){
                    Link("為什麼薩摩耶人氣這麼高？", destination: URL(string: "https://www.petbacker.com.tw/blog/%E7%A4%BE%E5%8C%BA/%E4%BA%8C%E5%93%88%E4%B8%8D%E6%9C%8D%EF%BC%8C%E6%98%8E%E6%98%8E%E9%83%BD%E6%84%9B%E6%8B%86%E5%AE%B6%EF%BC%8C%E7%88%B2%E4%BB%80%E9%BA%BD%E5%AE%83%E5%8D%BB%E6%9C%89%E5%A4%A9%E4%BD%BF%E7%9A%84%E7%A8%B1%E8%99%9F%EF%BC%9F%EF%BC%81")!)
                    Link("養薩摩耶24小時不打掃會怎樣？", destination: URL(string: "https://pets.ettoday.net/news/1517656")!)
                    Link("點我看更多薩摩耶的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E8%96%A9%E6%91%A9%E8%80%B6%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct husky: View{
    var body: some View{
        TabView{
            VStack{
                Image("哈士奇")
                .resizable()
                .scaledToFit()
                Text("哈士奇")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E5%93%88%E5%A3%AB%E5%A5%87&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj1lea9qsDsAhVkFqYKHbP6Cx8Q_AUoAXoECAUQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("哈士奇是北方地區雪橇型狗的總稱，被用於雪橇犬拉車比賽．哈士奇現今也作為寵物飼養．")
                }
                Section(header: Text("husky起源小知識")){
                    Text("「husky」這個詞的起源是一群住在北極的愛斯基摩人（又名因紐特人），是因為英國商船的水手給「Eskimos」稱為「Huskimos」又簡稱為「哈士奇」。而愛斯基摩人飼養哈士奇的紀錄最早是從1852年才開始記載。")
                }
                Section(header: Text("外表")){
                    Text("哈士奇有類似狼的外表，有時候還會發出狼嚎般的叫聲。但是它們的眼神卻没有狼眼的犀利凶狠，而是露出一種温和、呆滞的神情。哈士奇属于中大型犬，所以它們的身軀不會太小，而且整个身軀的肌肉紧凑發達，被厚實濃密的毛髮遮蓋。")
                    Text("哈士奇的頭部比較尖，眼睛呈現杏仁狀。眼睛多呈現棕色或者是蓝色。口鼻的寬度適中，逐漸變細，末端既不尖也不方。脖子長度適中、為拱形。")
                    Text("哈士奇的毛髮為雙層毛，因為它早年長期生活在寒冷的西伯利亞地區，所以它們需要濃密厚實的毛髮來驅寒保暖。毛髮的長度中等，輕輕的貼在身軀上。它的優美體型仍然可以毫無保留的展示在你眼前。哈士奇的毛髮顏色從黑色到純白色都可以被接受。")
                }
                Section(header: Text("壽命")){
                    Text("10－15歲")
                }
                Section(header: Text("性格")){
                    Text("儘管有著狼一般令人害怕的外觀，哈士奇的性情卻很溫順。由於是一種工作犬，它們精力充沛，喜歡探索和運動。這使得它們成為了廣受歡迎的家庭寵物和經常用於展示的犬種。")
                    Text("它們並不是那種善於阿諛和討好主人的犬種。很多情況下它們會拒絕執行命令，直到它們找到一個比簡單地向主人讓步更好的理由為止。")
                }
                Section(header: Text("更多資訊")){
                    Link("哈士奇怎麼養？", destination: URL(string: "https://kknews.cc/pet/e9pe8vz.html")!)
                    Link("怎麼分辨哈士奇和二哈？", destination: URL(string: "https://www.youtube.com/watch?v=p31S8fZh1-M")!)
                    Link("點我看更多哈士奇的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%93%88%E5%A3%AB%E5%A5%87")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct sheepdog: View{
    var body: some View{
        TabView{
            VStack{
                Image("牧羊犬")
                .resizable()
                .scaledToFit()
                Text("牧羊犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E7%89%A7%E7%BE%8A%E7%8A%AC&tbm=isch&ved=2ahUKEwjNvOeKr8DsAhWyI6YKHU69BkgQ2-cCegQIABAA&oq=%E7%89%A7%E7%BE%8A%E7%8A%AC&gs_lcp=CgNpbWcQDDICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCABQ11lY11lglGloAHAAeACAAYUBiAGFAZIBAzAuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=sF-NX82kGrLHmAXO-prABA&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("牧羊犬是一類受人馴養的犬種，屬於活潑且聰明的犬隻。原來的培養目的為了對家畜，尤其是羊隻進行守衛與集趕。除了原先的作業用途之外，現今的許多牧羊犬成為了家中的寵物。")
                }
                Section(header: Text("種類")){
                    Link("澳洲牧羊犬", destination: URL(string: "https://kknews.cc/pet/l8lqn22.html")!)
                    Link("英國古代牧羊犬", destination: URL(string: "https://petbird.tw/article8496.html")!)
                    Link("德國牧羊犬", destination: URL(string: "https://zh.wikipedia.org/wiki/%E7%91%9E%E5%85%B8%E7%89%A7%E7%BE%8A%E7%8A%AC")!)
                    Link("邊境牧羊犬", destination: URL(string: "https://kknews.cc/pet/k3rzo8.html")!)
                    Link("瑞典牧羊犬", destination: URL(string: "https://kknews.cc/pet/2n4a3ye.html")!)
                    Link("喜樂蒂牧羊犬", destination: URL(string: "https://kknews.cc/pet/4lmzr2.html")!)
                    Link("瑞士牧羊犬", destination: URL(string: "https://www.royalcanin.com/tw/dogs/breeds/breed-library/white-swiss-shepherd-dog")!)
                }
                Section(header: Text("更多資訊")){
                    Link("最出名的十大牧羊犬", destination: URL(string: "https://kknews.cc/pet/zmjjpq3.html")!)
                    Link("邊境牧羊犬好養嗎？應該怎麼飼養？", destination: URL(string: "https://kknews.cc/pet/nvxe698.html")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct labradorRetriever: View{
    var body: some View{
        TabView{
            VStack{
                Image("拉布拉多")
                .resizable()
                .scaledToFit()
                Text("拉布拉多")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E6%8B%89%E5%B8%83%E6%8B%89%E5%A4%9A&bih=867&biw=1396&hl=zh-CN&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjn2rjVtMDsAhXKLqYKHYFqD2AQ_AUoAXoECAYQAw")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("拉布拉多犬或稱拉布拉多拾獵犬（簡稱拉布拉多；英語：Labrador Retriever）是一種中大型犬類，天生個性溫和、活潑、沒有攻擊性和智商高，是適合被選作導盲犬或其他工作犬的狗品種，跟黃金獵犬、哈士奇並列三大低攻擊性犬類之一。在美國犬業俱樂部中拉布拉多是目前登記數量最多的品種。")
                }
                Section(header: Text("外表")){
                    Text("毛屬短毛，外層直且緊密內則為柔軟且能防水禦寒的內層毛皮，如水獺般的跟腳趾間的蹼使牠們非常適於游泳。拉布拉多的標準顏色有三種：黑色、黃色、巧克力色。是由兩組基因控制，一組控制毛色有黑黃兩種，另一組控制鼻頭的顏色有黑色跟粉紅色，巧克力色是黑色基因跟粉紅色鼻頭基因的組合，黃色系拉布拉多則有兩種鼻頭顏色的可能，而黑色就是全深色的組合。")
                    Text("拉布拉多犬屬於中大型犬，身型大約55～62公分，體重大約在25～34公斤左右。公犬身高：22.5～24.5英吋，體重：65～80磅。母犬身高：21.5～23.5英吋，體重：55～70磅。")
                }
                Section(header: Text("壽命")){
                    Text("10－15歲")
                }
                Section(header: Text("性格")){
                    Text("拉布拉多是相當均衡和非常全面的一個品種，適用於許多功能同時也是很好的寵物。它們很容易被訓練，是一個服從性高的犬種。它們是值得分享你的愛的忠實夥伴。它們是非常友好的狗，尤其是對待小孩子們。通常它們不具備出現在其他犬類中的麻煩特性，比如：占地盤、不安全、具攻擊性、具破壞能力、不規則地敏感等。")
                    Text("大多數拉布拉多喜歡不斷地撿回球和其他形式的活動（比如dog agility 或者 flyball），它們在相當程度上都是以食物和娛樂為導向的，它們相當的容易被訓練，並對新事物無偏見，精力高度集中於對人的注意和反應。")
                    Text("拉布拉多穩定的性情和快速學習能力使得它們是工作犬的理想犬種。")
                }
                Section(header: Text("更多資訊")){
                    Link("如何分辨拉布拉多和黃金獵犬", destination: URL(string: "https://kknews.cc/pet/4qv5kmx.html")!)
                    Link("拉布拉多蟬聯美國最受歡迎犬種28年", destination: URL(string: "https://www.storm.mg/article/1086240")!)
                    Link("點我看更多拉布拉多犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E6%8B%89%E5%B8%83%E6%8B%89%E5%A4%9A%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct dachshund: View{
    var body: some View{
        TabView{
            VStack{
                Image("臘腸")
                .resizable()
                .scaledToFit()
                Text("臘腸狗")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E8%87%98%E8%85%B8%E7%8B%97&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjO1MCjt8DsAhXhDaYKHbxdAHMQ_AUoAXoECAUQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("臘腸犬，又稱達克斯獵犬（德語：Dachshund），是一種短腿，長身的獵犬。其名源於德國，「Dachs」意思是獾，「Hund」意思是狗，原意「獾狗」。此品種被發展為嗅獵，追蹤，及捕殺獾類及其他穴居動物。有意思的是，雖然「Dachshund」是一個德語單詞，但是它在德國並不常用，德國人通常把它們叫做「Dackel」或「Teckel」。")
                }
                Section(header: Text("外表")){
                    Text("根據皮毛，它們可以分為三種：光毛型、長毛型和剛毛型。剛毛型的脊骨通常比另外兩種要短。")
                    Text("臘腸犬一般身體較長、肌肉發達，有短而粗壯的雙腿。臘腸犬的前爪（相對於身體）顯得不成比例地大，形狀如同船槳，適於挖掘。皮膚膚質疏鬆，在追擊獵物時如需鑽過狹窄的洞穴，也無須擔心皮膚受傷。臘腸犬有著較大的胸腔，這樣的胸腔構造使得它們有更大的肺部（肺容量）；有了上述條件，臘腸犬在捕獵時就有更多的耐力。臘腸犬的吻部較長。")
                }
                Section(header: Text("壽命")){
                    Text("12－16歲")
                }
                Section(header: Text("性格")){
                    Text("臘腸犬是忠誠、頑皮的犬種，它們喜愛追逐小動物和小鳥的嗜好特別有名。")
                    Text("「臘腸犬聰明，有活力，充滿勇氣甚至有些輕率，能夠堅持地面及地下的工作」")
                }
                Section(header: Text("更多資訊")){
                    Link("要怎麼抱臘腸？", destination: URL(string: "https://vidol.tv/news?news_id=149836")!)
                    Link("點我看更多臘腸犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E8%85%8A%E8%82%A0%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct shiba: View{
    var body: some View{
        TabView{
            VStack{
                Image("柴犬")
                .resizable()
                .scaledToFit()
                Text("柴犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E8%87%98%E8%85%B8%E7%8B%97&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjO1MCjt8DsAhXhDaYKHbxdAHMQ_AUoAXoECAUQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("柴犬（日語：柴犬／しばいぬ，學名：Canis lupus familiaris），日本犬種之一。屬於小型犬種。柴犬於1936年（昭和11年）12月16日被指定為日本的天然紀念物（指定了六種日本犬種的其中一個），亦是現存六種日本犬中其中一種小型犬。根據日本犬保存會，日本境內飼養的日本犬種裡，約有八成為柴犬。")
                }
                Section(header: Text("外表")){
                    Text("柴犬面貌與秋田犬相似，也因此兩者經常被搞混。細分的話，秋田臉較柴犬圓，柴犬的耳朵與嘴較秋田尖，不過兩者最明顯的差別是體型，柴犬比秋田明顯嬌小。")
                    Text("柴犬的特徵包括短毛、豎耳、捲尾等。屬小型犬，具有良好發展的肌肉。公犬計算至肩隆的身高約為38－41公分，母犬則為35－38公分。中等身形的公柴犬平均體重約為9公斤，母柴犬則約為8公斤。體重內的骨頭占比適中。")
                    Text("柴犬有兩層毛，外層較堅硬直挺，裏層則較柔軟厚實。包括臉部、耳朵、身體和腿部皆為短毛。尾巴上的毛髮較長，並散開成叢狀。柴犬毛色一般為淺棕色、黑色、白色或胡麻色。柴犬一年換毛兩次。 柴犬的尾巴為卷尾，捲曲方向可能偏左、偏右，或沒有偏移。")
                }
                Section(header: Text("壽命")){
                    Text("15－18歲")
                }
                Section(header: Text("性格")){
                    Text("柴犬天性較為大膽、獨立，同時也有頑固一面。有些柴犬警戒心較強，也有些柴犬對人類較為友好，但基本上與日本犬的個性相同。")
                    Text("柴犬在古代是作為追緝獵物的獵犬使用，因此通常具有一定警戒心與攻擊性，一般來說，母柴犬的攻擊性比公柴犬來得較為兇猛。")
                    Text("柴犬是一種相對自律的犬種，並經常喜歡保持自己身體的潔淨。柴犬經常會用舌頭清潔自己的腳掌和腿部。人飼養的柴犬通常能夠很快適應室內生活。")
                }
                Section(header: Text("更多資訊")){
                    Link("怎麼分辨秋田跟柴犬？", destination: URL(string: "https://www.pet-world.com.tw/news_info.asp?id=1101")!)
                    Link("養柴犬全攻略", destination: URL(string: "https://peipei1101.pixnet.net/blog/post/312944140")!)
                    Link("點我看更多柴犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E6%9F%B4%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct corgi: View{
    var body: some View{
        TabView{
            VStack{
                Image("柯基")
                .resizable()
                .scaledToFit()
                Text("柯基")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E6%9F%AF%E5%9F%BA&tbm=isch&ved=2ahUKEwjLm8nxucDsAhURBJQKHes0AsgQ2-cCegQIABAA&oq=%E6%9F%AF%E5%9F%BA&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCABQkvMeWOj2HmDE-R5oAHAAeACAAVSIAZQDkgEBNpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=BGuNX8uJEpGI0ATr6YjADA&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("威爾斯柯基犬（又名柯基犬；英語：Welsh Corgi）是牧羊犬中的一個品種，原產於英國威爾斯。當前獲承認的有兩個不同品種：卡提根（Cardigan） 和潘布魯克（Pembroke）。歷史上一般認為潘布魯克源自於10世紀左右佛蘭德紡織者引進的狗，而卡提根則是源於諾爾斯定居者帶來的狗，特別是其共同祖先瑞典牧羊犬。這兩種有時會用雜交來解釋其相似之處。")
                }
                Section(header: Text("外表")){
                    Text("威爾斯科基犬頭部大小適中，耳朵直立，耳朵長度適當。耳朵更大，四肢更短，後肢肌肉發達，卡迪肯威爾斯柯基犬留下來。有一條尾巴，而另一種威爾斯柯基幾乎沒有尾巴，部分尾巴會脫落。")
                    Text("在毛髮上略有不同，卡迪肯威爾斯柯基的毛髮軟而硬，顏色多樣；潘布魯克威爾斯柯基的毛髮長度適中，顏色也不同。淺紅色或淺黃色棕色等，有四種顏色。四肢、胸部和頸部都覆蓋著白髮。")
                    Text("被毛中等長度，非常緻密的雙層塗層。外層毛質地稍硬，從不是剛毛、捲曲或絲狀。外衣光滑，耐惡劣天氣。隔熱的底毛短、柔軟而濃厚。正確的毛髮是：頭部、耳朵和腿部的毛髮是短的；身體上的毛髮是中等長度；稍長的毛髮出現在脖子、大腿的後部和尾巴下面。")
                }
                Section(header: Text("壽命")){
                    Text("12－15歲")
                }
                Section(header: Text("性格")){
                    Text("潘布魯克威爾斯柯基犬以反應快、意志力強聞名。牠們好動、活躍，無論飼主做什麼，牠們都想參與，不願錯過。在柯基犬心裡，牠們是住在小身體裡的大狗。")
                    Text("潘布魯克 威爾斯柯基犬是吃苦耐勞的小型犬。")
                    Text("柯基犬似乎對高處特別感興趣；有時或許會發現牠們爬到沙發背上，或跳到廚房餐桌上。柯基犬需要和善但紀律嚴明的訓練。如果放任牠們不管，狗兒可能會變得愛操控他人，自己當老大。")
                }
                Section(header: Text("更多資訊")){
                    Link("英國女王與柯基", destination: URL(string: "https://www.elle.com/tw/entertainment/gossip/g24384008/queen-elizabeth-last-corgi-passed-away/")!)
                    Link("柯基小知識", destination: URL(string: "https://litomon.com/blog/aboutcorgi/")!)
                    Link("七個科基受歡迎的原因", destination: URL(string: "https://hmitalk.com/2020/07/%E6%9F%AF%E5%9F%BA%E6%9C%80%E5%8F%97%E6%AD%A1%E8%BF%8E%E7%9A%847%E5%80%8B%E5%8E%9F%E5%9B%A0%EF%BC%8C%E6%9C%80%E5%BE%8C%E4%B8%80%E5%80%8B%E5%9C%88%E7%B2%89%E7%84%A1%E6%95%B8%EF%BC%81/")!)
                    Link("點我看更多科基的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%A8%81%E7%88%BE%E6%96%AF%E6%9F%AF%E5%9F%BA%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct akita: View{
    var body: some View{
        TabView{
            VStack{
                Image("秋田")
                .resizable()
                .scaledToFit()
                Text("秋田")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E7%A7%8B%E7%94%B0&tbm=isch&ved=2ahUKEwjOk_Lju8DsAhUIAKYKHctLAcsQ2-cCegQIABAA&oq=%E7%A7%8B%E7%94%B0&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCABQhoU1WKuJNWCSjTVoAHAAeACAAZQBiAHzBJIBAzcuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=AG2NX86THYiAmAXLl4XYDA&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("秋田犬（日語：秋田犬／あきたいぬ／アキタイヌ），是日本犬的一種，是國家天然紀念物之六種日本犬中唯一的大型犬種。在日本，送秋田犬的雕像、圖片代表著「祝你早日康復」。在日本是以對飼主忠誠聞名的家庭寵物犬，日本知名的忠犬八公即為秋田犬。")
                }
                Section(header: Text("外表")){
                    Text("柴犬面貌與秋田犬相似，也因此兩者經常被搞混。細分的話，秋田臉較柴犬圓，柴犬的耳朵與嘴較秋田尖，不過兩者最明顯的差別是體型，柴犬比秋田明顯嬌小。")
                    Text("秋田犬的體態均衡，背部直挺，胸部及腰部肌肉結實，筋、腱、韌同樣發達，皮膚沒有鬆弛感。粗大厚實的尾巴會在背上捲成一到兩圈的樣子。牠的腳趾間有蹼，所以善於游泳。因為牠的皮毛有天然防水能力，所以若洗澡太頻密會影響防水能力。")
                    Text("耳朵稍小，呈厚三角形且稍向前傾，耳線直立緊貼。 眼睛稍俱三角形，外毗稍上方呈深褐色。身體方面秋田的胸深而肋骨發達，前胸發達。")
                    Text("前肢在肩胛上有適當的角度，並且健壯發達、腿肘堅實，前膊粗而壯實，系部稍有傾斜、趾圓而大、緊握厚實。 後肢發達且強韌有力，踏地力強，富有敏捷力。尾巴粗而卷力強，長略至飛節，卷型分左卷、右卷、太鼓卷、二重卷。")
                }
                Section(header: Text("壽命")){
                    Text("11－15歲")
                }
                Section(header: Text("性格")){
                    Text("秋田犬原本為獵犬、鬥犬，經過長時期改良，現在已經作為家庭犬飼養於居家環境中。但是仍然保留獵性和鬥性，見到小動物會追，看到其他狗會有攻擊性，體型越大，顯現的攻擊性就越強，公狗尤其明顯。")
                    Text("秋田犬的個性十分勇敢、深情、忠心和聰明。可是，要注意因為牠地域意識極強，會跟其他犬隻打架。")
                    Text("飼養秋田犬需要極大的空間，而且運動量亦很高，然而在秋田犬心情不佳時可以餵食肉圓，可以讓秋田犬保持好心情，在成犬後可在庭園放溜，具有固守庭園與防止陌生人進入之功能。")
                }
                Section(header: Text("更多資訊")){
                    Link("怎麼分辨秋田跟柴犬？", destination: URL(string: "https://www.pet-world.com.tw/news_info.asp?id=1101")!)
                    Link("養秋田犬之前要準備什麼？", destination: URL(string: "https://kknews.cc/pet/nxg2plq.html")!)
                    Link("點我看更多秋田犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E7%A7%8B%E7%94%B0%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct doberman: View{
    var body: some View{
        TabView{
            VStack{
                Image("杜賓")
                .resizable()
                .scaledToFit()
                Text("杜賓犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E6%9D%9C%E8%B3%93%E7%8A%AC&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjy2cfcwMDsAhUDHqYKHVqBCf8Q_AUoAXoECAYQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("杜賓犬（德語：Dobermann，英語：Doberman Pinscher），是原產於德國的一種中大型犬，大約在1890年由Karl Friedrich Louis Dobermann所培育出來。是最常被用來作為軍事用途的軍犬。")
                }
                Section(header: Text("外表")){
                    Text("杜賓犬通常會斷耳斷尾；身體呈長方形，擁有緊實敏捷的體型，線條流線、簡潔、富肌肉感。")
                    Text("杜賓犬在當初培育的過程中引入了洛威拿的血統。杜賓犬和洛威拿這兩種犬都是優秀的護衛犬。對於飼養杜賓犬的飼主，其主要作用為看家等用途。")
                    Text("杜賓犬屬於大型犬種，平均體重35公斤-40公斤，比較大型的可達45公斤或以上﹔精力充沛而且有力的犬種，黑色配有邊界清晰的鐵鏽色斑紋。緊湊而堅固的結構顯示出力量、敏捷度、耐力。")
                    Text("杜賓犬身體強壯，動作迅猛，氣勢強悍，是世界上最具有勇氣和力量的犬種之一。")
                }
                Section(header: Text("壽命")){
                    Text("10－13歲")
                }
                Section(header: Text("性格")){
                    Text("杜賓犬一般是一種自信而勇敢的犬種，其自信和冷漠使他不容易接近，也不隨便表示友好。")
                    Text("杜賓犬具有捍衛領土、保衛家園的天性，他是一種非常聰明的犬種，堅強、有適應性，非常樂於工作，使他成為一種很好的軍犬、警衛犬、伴侶犬、護衛犬和多用途犬種。")
                    Text("為了讓本犬種確實服從命令，飼養者應嚴格的訓練，杜賓犬生來具有警衛才能。此犬個性沉穩，極富感情，也可做家庭伴侶犬。")
                }
                Section(header: Text("更多資訊")){
                    Link("為什麼養杜賓犬的人比較少？", destination: URL(string: "https://kknews.cc/pet/2lko25y.html")!)
                    Link("怎麼養杜賓犬？", destination: URL(string: "https://kknews.cc/pet/654z9gm.html")!)
                    Link("點我看更多杜賓犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E6%9D%9C%E8%B3%93%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct poodle: View{
    var body: some View{
        TabView{
            VStack{
                Image("貴賓")
                .resizable()
                .scaledToFit()
                Text("貴賓犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E8%B2%B4%E8%B3%93&tbm=isch&ved=2ahUKEwjP6b3hwMDsAhUHdJQKHQbnAPkQ2-cCegQIABAA&oq=%E8%B2%B4%E8%B3%93&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyBAgAEB4yBAgAEB4yBAgAEB4yBAgAEB4yBAgAEB4yBAgAEB5QqtEcWJzdHGD94BxoAHAAeACAAWSIAaoEkgEDNy4xmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=OXKNX4_pJIfo0QSGzoPIDw&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("貴賓犬也稱貴婦犬，在台灣最常見的為迷你型與玩具型，而高大型標準型貴賓犬在台灣並不常見，因牠舉止神態表現優雅、聰明好訓練，因此受到眾多民眾喜愛。飼養時除了要給予足夠的營養，也要給予適當的運動。")
                }
                Section(header: Text("外表")){
                    Text("貴賓犬又分多種類型，如巨型貴賓犬、標準型貴賓犬、迷你型貴賓犬、玩具型貴賓犬；另外，有註冊組織也承認中型貴賓犬的分類，介於標準型貴賓犬和迷你型貴賓犬之間。")
                    Text("(1)標準型貴賓犬：身高約33厘米到38厘米，體重大約在二十到二十二公斤左右。")
                    Text(" (2)迷你型貴賓犬：身高約在二十八到三十八厘米，體重大約在十二到十四公斤左右。")
                    Text("(3)玩具型貴賓犬：的身高大約在二十五到二十八厘米左右，體重大約在七公斤左右。")
                    Text("毛色通常為單一色，有白色、黑色、棕色、杏色、奶油色等等許多顏色，也有不同顏色混雜的花貴賓犬，但花貴賓犬目前在國際上還未被認可。")
                }
                Section(header: Text("壽命")){
                    Text("12－15歲")
                }
                Section(header: Text("性格")){
                    Text("貴賓犬的個性優雅、聰明、勇敢。標準型貴賓犬的體型較大，許多國家會將標準型貴賓犬當作警犬，也因為牠聰明也好教，在訓練上也較快能學會一些技能。")
                }
                Section(header: Text("更多資訊")){
                    Link("四個貴賓狗常見疾病", destination: URL(string: "https://shoptw.furbo.com/blogs/health/poodle_disease")!)
                    Link("貴賓狗的優缺點？", destination: URL(string: "https://kknews.cc/pet/5326e6k.html")!)
                    Link("日本人最愛的狗", destination: URL(string: "https://www.nippon.com/hk/japan-data/h00642/")!)
                    Link("點我看更多貴賓犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E8%B4%B5%E5%AE%BE%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct maltese: View{
    var body: some View{
        TabView{
            VStack{
                Image("馬爾濟斯")
                .resizable()
                .scaledToFit()
                Text("馬爾濟斯")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E9%A6%AC%E7%88%BE%E6%BF%9F%E6%96%AF&tbm=isch&ved=2ahUKEwj6_czCwsDsAhUUyIsBHc9WBzsQ2-cCegQIABAA&oq=%E9%A6%AC%E7%88%BE%E6%BF%9F%E6%96%AF&gs_lcp=CgNpbWcQAzICCAAyAggAMgQIABAeMgQIABAeMgQIABAeMgQIABAeMgQIABAYMgQIABAeMgQIABAeMgQIABAeUNTNIFj53iBguuEgaABwAHgAgAGTAYgBmwaSAQQxMC4xmAEAoAEBqgELZ3dzLXdpei1pbWewAQDAAQE&sclient=img&ei=EXSNX7qxK5SQr7wPz62d2AM&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("馬爾濟斯（英語:Maltese)，屬於長毛小型的賞玩犬，雖然體型嬌小，但卻是精力旺盛而且勇敢，很適合做為看家犬喔！大多數的人都會被他那如絲狀的高貴被毛所悉，看起來雖華麗，卻沒有嬌氣，個性溫和，適合與全家人相處。")
                }
                Section(header: Text("外表")){
                    Text("馬爾濟斯犬是從頭到腳披著白色絲狀長毛的賞玩犬。牠的態度文雅而深情、熱切而行動活潑，儘管體型小卻具有令人滿意的作為伴侶犬所需的精力。")
                    Text("背毛為白色的絲狀柔軟細毛，能生得很長，有時會泛有一點點淺黃色。腹部可以看見粉紅色的皮膚。眼睛、鼻頭、腳掌皆為黑色（幼犬期的腳掌為粉紅色）。")
                    Text("耳朵呈下垂狀的三角形，警戒時也無法完全豎起。尾巴通常會捲於背上。")
                }
                Section(header: Text("壽命")){
                    Text("15－25歲")
                }
                Section(header: Text("性格")){
                    Text("馬爾濟斯犬是溫和的小犬，全家的寵物。可以放心地讓牠與兒童玩耍。通常健康良好，一直到生命晚期仍生氣勃勃。")
                    Text("瑪爾濟斯一身白色被毛如絲，人們經常把牠與華麗的靠墊、豪華的背景聯繫起來，但實際上牠是個勇敢的小傢伙，經常表現出頑強的性格。")
                    Text("雖然身材不高，但是牠卻是很好的看家犬。瑪爾濟斯對陌生人很敵視，但對主人卻感情深厚。性情可愛，有時會搞點惡作劇，非常富有個性。")
                }
                Section(header: Text("更多資訊")){
                    Link("馬爾濟斯之歌", destination: URL(string: "https://www.youtube.com/watch?v=xZU2x8McjZ8")!)
                    Link("馬爾濟斯冷知識", destination: URL(string: "https://litomon.com/blog/maltese/")!)
                    Link("飼養馬爾濟斯怎麼準備？", destination: URL(string: "https://petbird.tw/article5292.html")!)
                    Link("點我看更多馬爾濟斯的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E9%A6%AC%E7%88%BE%E6%BF%9F%E6%96%AF")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct pomeranian: View{
    var body: some View{
        TabView{
            VStack{
                Image("博美")
                .resizable()
                .scaledToFit()
                Text("博美犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E5%8D%9A%E7%BE%8E%E7%8A%AC&tbm=isch&ved=2ahUKEwiKu4vDxMDsAhVQAKYKHd-eBuIQ2-cCegQIABAA&oq=%E5%8D%9A%E7%BE%8E&gs_lcp=CgNpbWcQARgBMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADoGCAAQBRAeOgQIABAYUIyeLViQsS1glrwtaANwAHgAgAFhiAGdBZIBAjEwmAEAoAEBqgELZ3dzLXdpei1pbWewAQDAAQE&sclient=img&ei=K3aNX8r5JNCAmAXfvZqQDg&bih=867&biw=1396")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("博美犬（英語：Pomeranian）是狐狸犬家族中最小的犬種，其名出自原產地波美拉尼亞，在波蘭西北部和德國東北部沿海交界地。博美犬因嬌小的體型而歸類為玩賞犬類。")
                }
                Section(header: Text("外表")){
                    Text("博美犬的頭部為契形，使它看起來有著狐貍臉；牠耳朵小而尖，作為血統特徵的尾巴必須豎起，而其上蓬鬆的毛平展在背上。")
                    Text("分為兩層內層被毛和上層被毛——前者為柔軟厚毛茸茸的，後者則為長毛直且閃耀的覆蓋全身，在天氣暖活時博美會掉內層被毛。")
                    Text("有黑、棕、巧克力色、海狸色、紅、橘、奶油色、橘-黑貂色、狼-黑貂色、藍、白、雜色")
                }
                Section(header: Text("壽命")){
                    Text("12－16歲")
                }
                Section(header: Text("性格")){
                    Text("博美犬性格健康且開朗，有個性，活力充沛。其中最受人矚目的是其忠實、友善的個性。")
                    Text("雖然屬於小型犬種，但遇到突髮狀況會展現勇敢、兇悍的一面。有時也會撒撒嬌。大部份的博美狗狗都相當愛叫，叫聲可是既尖銳又嘹亮。")
                    Text("只要有個風吹草動，就會發出驚人的聲響提示主人，不過它也只能當警戒看門犬，不具有威脅性的攻擊力，畢竟它的體型實在太小了。")
                }
                Section(header: Text("更多資訊")){
                    Link("飼養博美犬前的準備", destination: URL(string: "https://kknews.cc/pet/ax92pjj.html")!)
                    Link("博美犬常見疾病", destination: URL(string: "https://kknews.cc/pet/ka8jq8v.html")!)
                    Link("點我看更多博美犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%8D%9A%E7%BE%8E%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct pug: View{
    var body: some View{
        TabView{
            VStack{
                Image("巴哥")
                .resizable()
                .scaledToFit()
                Text("巴哥")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E5%B7%B4%E5%93%A5&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjpz8a3ycDsAhVRHaYKHX_TDbQQ_AUoAXoECAYQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("巴哥犬（英語：Pug）原中文名哈巴狗，又稱作巴哥。個性溫和、活潑，喜歡與人互動，很適合有小孩的家庭飼養，牠很喜歡運動，須給予牠足夠的活動空間。幼犬的成長期照顧尤其重要，食物弄鬆軟再餵食，洗澡時水溫冷熱也要適中，八個月後才能算是成犬。")
                }
                Section(header: Text("外表")){
                    Text("巴哥犬身體比例勻稱結實，比例勻稱呈方形，頭大黑臉黑鼻子、額頭有皺紋，小小的垂耳，臉部極具特徵，日耳曼系國家稱之為墨普斯犬（皺起來的臉）。")
                    Text("胸腹肌肉健壯，四肢短小，緊緊捲曲的尾巴，是溫馴的狗，很喜歡和人相處且對環境的適應力極佳。")
                }
                Section(header: Text("壽命")){
                    Text("12－15歲")
                }
                Section(header: Text("性格")){
                    Text("巴哥犬性格穩定溫和、活潑好玩，喜歡與人互動，且非常忠心的保護主人，如有陌生人走近時，會吠得很厲害。")
                    Text("巴哥犬是體貼、可愛的小型犬種，此犬具備優良及愛乾淨的個性，這些特色便成為廣受喜愛的原因，不用經常給牠洗澡，大約一個月兩次即可。")
                    Text("由於巴哥犬活潑好玩，每天必須給予一定的時間活動，但不需要太多戶外活動。最好是早晨和傍晚帶牠出去散步。")
                    Text("巴哥是不耐熱。其對高溫比較敏感，在高溫的時候，尤其是盛夏的中下，應該避免出外活動而是讓他們待在蔭涼的地方並配以充足的飲水。")
                }
                Section(header: Text("更多資訊")){
                    Link("你不知道的巴哥", destination: URL(string: "https://kknews.cc/pet/9y5egpq.html")!)
                    Link("巴哥犬跟鬥牛犬怎麼分？", destination: URL(string: "https://kknews.cc/pet/n54m9b8.html")!)
                    Link("點我看更多巴哥的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%B7%B4%E5%93%A5%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct bulldog: View{
    var body: some View{
        TabView{
            VStack{
                Image("鬥牛犬")
                .resizable()
                .scaledToFit()
                Text("鬥牛犬")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E9%AC%A5%E7%89%9B%E7%8A%AC&hl=zh-CN&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjMrt6Jy8DsAhW6KqYKHf_XC5YQ_AUoAXoECAYQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("鬥牛犬（英語：Bulldog）英國鬥牛犬早期是和公牛戰鬥的強悍狗狗，然而，經過選擇培育，鬥牛犬的性格逐漸變文雅溫和，現今鬥牛犬雖有原始的凶悍外表，但性情已變得善良、忠誠、順從安靜，極少吠叫，適合城市中的公寓飼養。")
                }
                Section(header: Text("外表")){
                    Text("鬥牛犬有寬闊的頭部以及肩膀，還有較突出的下顎、皺眉頭，眼距寬、雙眼圓且色深，鼻頭上方有一層特有的皺褶，頸部下方皮膚下垂，嘴皮下垂、牙齒尖偶爾前突。鬥牛犬毛短且光滑平順，合格的配色有紅褐色、淡黃褐色、白色、虎斑色以及前四種配色之斑點混色。")
                    Text("與其他被斷尾、剪尾的短尾犬種不同，鬥牛犬是少數天生短尾的犬種之一，其尾可能直或呈螺旋狀。")
                }
                Section(header: Text("壽命")){
                    Text("8－10歲")
                }
                Section(header: Text("性格")){
                    Text("在經過有選擇的培育，鬥牛犬的性格逐漸變文雅溫和，善良而富有感情了，是很好的家庭犬。")
                    Text("鬥牛犬對兒童特別的親和友善，是人們最好的伙伴。身軀雖小但是整體外觀和姿勢顯示出非常穩固，有活力且充滿力量。")
                    Text("堅定而勇敢，不惡意好鬥，但是在面對敢於進犯自己和入侵自己主人領地的壞人時，它從不退縮，總是正面面對敵人。")
                    Text("鬥牛犬溫和而不失勇猛，善良而不失警惕，是一種很好的家庭伴侶犬和守衛犬，如果你家裡有個小孩的話，把孩子交給小鬥牛犬來照顧是不錯的選擇，它們會成為好朋友的！")
                }
                Section(header: Text("更多資訊")){
                    Link("飼養法國鬥牛犬其實不難", destination: URL(string: "https://kknews.cc/pet/eoejklr.html")!)
                    Link("巴哥犬跟鬥牛犬怎麼分？", destination: URL(string: "https://kknews.cc/pet/n54m9b8.html")!)
                    Link("點我看更多鬥牛犬的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E6%96%97%E7%89%9B%E7%8A%AC")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
struct chihuahua: View{
    var body: some View{
        TabView{
            VStack{
                Image("吉娃娃")
                .resizable()
                .scaledToFit()
                Text("吉娃娃")
                    .font(.largeTitle)
                Link("戳一下我就有更多照片哦", destination: URL(string: "https://www.google.com/search?q=%E5%90%89%E5%A8%83%E5%A8%83&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi0mY_mzMDsAhVQw4sBHfFIC5gQ_AUoAXoECAcQAw&biw=1396&bih=867")!)
            }
            List{
                Section(header: Text("簡介")){
                    Text("吉娃娃（西班牙語：Chihuahueño，英語：Chihuahua）是全球最小的犬種。")
                }
                Section(header: Text("外表")){
                    Text("吉娃娃犬以細小的體型、大眼睛、特別大的耳朵和直豎的尾巴為特徵。")
                    Text("以長短毛來分，可分為短毛與長毛，短毛是我們目前較常見的，而長毛吉娃娃身上的毛光澤且柔軟，後肢肌肉較發達。生性懦弱且對冷很敏感，喜歡熱，愛曬太陽。")
                    Text("長毛種的耳朵、四肢、尾巴皆有裝飾毛，但長度並未拖地，在花色方面，墨西哥地區以前以黑色品種居多，不過現在毛色已呈多樣化，包括奶油色、紅色、褐色、黑色中摻有黃褐色、各種混色。")
                }
                Section(header: Text("壽命")){
                    Text("12－20歲")
                }
                Section(header: Text("性格")){
                    Text("吉娃娃的性格極為神經質，絕大多數的吉娃娃喜歡到處吠叫，這也是吉娃娃之所以為人詬病的其中一點。")
                    Text("牠們的體型很細小，身體十分瘦弱，所以極容易受到傷害。")
                    Text("牠們細小的體型也為牠們帶來好處：因為牠們體型細小，使牠們能輕易適應現代的生活環境，包括市區和小公寓，適合老年人飼養。")
                    Text("吉娃娃特別的喜歡依賴自己的主人，它希望自己每時每刻都可以陪伴在自己主人的身邊。主人有什麼開心或者是難過的事情，它都想要參與進來。")
                }
                Section(header: Text("更多資訊")){
                    Link("為什麼很多人不喜歡吉娃娃？", destination: URL(string: "https://www.setn.com/News.aspx?NewsID=781629")!)
                    Link("如何飼養及娃娃？", destination: URL(string: "https://petbird.tw/article2148.html")!)
                    Link("點我看更多吉娃娃的資料", destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%90%89%E5%A8%83%E5%A8%83")!)
                }
            
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct dogPage: View{
    let dogs = ["黃金獵犬","薩摩耶","哈士奇","牧羊犬","拉布拉多","臘腸",
                "柴犬","柯基","秋田","杜賓","貴賓","馬爾濟斯","博美",
                "巴哥","鬥牛犬","吉娃娃"]
    var body: some View {
        ScrollView(.vertical) {
            let columns = [GridItem(.adaptive(minimum: 150))]
                LazyVGrid(columns: columns) {
                    Group{
                        //1 goldenRetriever
                        VStack {
                            NavigationLink(destination: goldenRetriever()){
                                Group{
                                    Image("黃金獵犬")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .clipped()
                                    Text("黃金獵犬")
                                }
                            }
                        }
                        
                        //2 samoyed
                        VStack {
                            NavigationLink(destination: samoyed()){
                                Group{
                                    Image("薩摩耶")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .clipped()
                                    Text("薩摩耶")
                                }
                            }
                        }
                        
                        //3 husky
                        VStack {
                            NavigationLink(destination:
                                husky()){
                                Group{
                                    Image("哈士奇")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .clipped()
                                    Text("哈士奇")
                                }
                            }
                        }
                        
                        //4 sheepdog
                        VStack {
                            NavigationLink(destination: sheepdog()){
                                Group{
                                    Image("牧羊犬")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("牧羊犬")
                                }
                            }
                        }
                        
                        //5 labradorRetriever
                        VStack {
                            NavigationLink(destination: labradorRetriever()){
                                Group{
                                    Image("拉布拉多")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 30)
                                        .clipped()
                                    Text("拉布拉多")
                                }
                            }
                        }
                        
                        //6 dachshund
                        VStack {
                            NavigationLink(destination:
                                dachshund()){
                                Group{
                                    Image("臘腸")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 30)
                                        .clipped()
                                    Text("臘腸")
                                }
                            }
                        }
                        
                        //7 shiba
                        VStack {
                            NavigationLink(destination:
                                shiba()){
                                Group{
                                    Image("柴犬")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 30)
                                        .clipped()
                                    Text("柴犬")
                                }
                            }
                        }
                        
                        //8 corgi
                        VStack {
                            NavigationLink(destination: corgi()){
                                Group{
                                    Image("柯基")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("柯基")
                                }
                            }
                        }
                        
                    }
                    Group{
                        //9 akita
                        VStack {
                            NavigationLink(destination: akita()){
                                Group{
                                    Image("秋田")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("秋田")
                                }
                            }
                        }
                        
                        //10 doberman
                        VStack {
                            NavigationLink(destination:
                                doberman()){
                                Group{
                                    Image("杜賓")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("杜賓")
                                }
                            }
                        }
                        
                        //11 poodle
                        VStack {
                            NavigationLink(destination:
                                poodle()){
                                Group{
                                    Image("貴賓")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .clipped()
                                    Text("貴賓")
                                }
                            }
                        }
                        
                        //12 maltese
                        VStack {
                            NavigationLink(destination:
                                maltese()){
                                Group{
                                    Image("馬爾濟斯")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("馬爾濟斯")
                                }
                            }
                        }
                        
                        //13 pomeranian
                        VStack {
                            NavigationLink(destination: pomeranian()){
                                Group{
                                    Image("博美")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("博美")
                                }
                            }
                        }
                        
                        //14 pug
                        VStack {
                            NavigationLink(destination: pug()){
                                Group{
                                    Image("巴哥")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 30)
                                        .clipped()
                                    Text("巴哥")
                                }
                            }
                        }
                        
                        //15 bulldog
                        VStack {
                            NavigationLink(destination: bulldog()){
                                Group{
                                    Image("鬥牛犬")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("鬥牛犬")
                                }
                            }
                        }
                        
                        //16 chihuahua
                        VStack {
                            NavigationLink(destination: chihuahua()){
                                Group{
                                    Image("吉娃娃")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .offset(x: 0, y: 20)
                                        .clipped()
                                    Text("吉娃娃")
                                }
                            }
                        }
                    
                    }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
        .navigationTitle("你看！這裡有一堆可愛的狗狗")
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct tempCatPage: View {
    @State private var scale: CGFloat = 01
    @State private var brightnessNumber: Double = 0
    @State private var rotation: Double = 0
    @State private var rotation3D: Double = 0
    @State private var blur: CGFloat = 0
    @State private var contrast: Double = 1
    @State private var gray: Double = 1
    var body: some View {
        GeometryReader {geometry in
            VStack{
                Text("但狗狗不是更可愛嗎？").font(.largeTitle)
                Image("狗")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width / 4*3)
                    .clipped()
                    .scaleEffect(scale)
                    .brightness(brightnessNumber)
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation3D), axis: (x: 0.0, y: 1.0, z: 0.0))
                    .border(Color.gray)
                    .blur(radius:blur)
                    .contrast(contrast)
                    .grayscale(gray)
                NavigationLink(destination: dogPage()){
                    Text("好啦，我先看一下狗狗！")
                }
                NavigationLink(destination: catPage()){
                    Text("不要，我就任性只想看貓貓！")
                }
                Form{
                    Group{
                        HStack{
                            Text("大小")
                            Slider(value: $scale, in: 0...1, minimumValueLabel: Image(systemName: "minus.magnifyingglass").imageScale(.small), maximumValueLabel: Image(systemName: "plus.magnifyingglass").imageScale(.large)){   }
                                    .accentColor(.red)
                        }
                    }
                    Group{
                        HStack{
                            Text("亮度")
                            Slider(value: $brightnessNumber, in: 0...0.8, minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small), maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)){   }
                                    .accentColor(.orange)
                        }
                    }
                    Group{
                        HStack{
                            Text("旋轉")
                            Slider(value: $rotation, in: 0...360, minimumValueLabel: Image(systemName: "rotate.right.fill").imageScale(.small), maximumValueLabel: Image(systemName: "rotate.right.fill").imageScale(.large)){   }
                                    .accentColor(.yellow)
                        }
                    }
                    Group{
                        HStack{
                            Text(" 3D ")
                            Slider(value: $rotation3D, in: 0...360, minimumValueLabel: Image(systemName: "arrow.left.and.right.righttriangle.left.righttriangle.right.fill").imageScale(.small), maximumValueLabel: Image(systemName: "arrow.left.and.right.righttriangle.left.righttriangle.right.fill").imageScale(.large)){   }
                                .accentColor(.green)
                        }
                    }
                    Group{
                        HStack{
                            Text("模糊")
                            Slider(value: $blur, in: 0...30, minimumValueLabel: Image(systemName: "drop.fill").imageScale(.small), maximumValueLabel: Image(systemName: "drop.fill").imageScale(.large)){   }
                                    .accentColor(.blue)
                        }
                    }
                    Group{
                        HStack{
                            Text("對比")
                            Slider(value: $contrast, in: 1...5, minimumValueLabel: Image(systemName: "square.lefthalf.fill").imageScale(.small), maximumValueLabel: Image(systemName: "square.lefthalf.fill").imageScale(.large)){   }
                                    .accentColor(.purple)
                        }
                    }
                    Group{
                        HStack{
                            Text("灰階")
                            Slider(value: $gray, in: 1...20, minimumValueLabel: Image(systemName: "pencil.tip.crop.circle.badge.minus").imageScale(.small), maximumValueLabel: Image(systemName: "pencil.tip.crop.circle.badge.plus").imageScale(.large)){   }
                                    .accentColor(.purple)
                        }
                    }
                }
            }
        }
        .navigationTitle(Text("貓貓是可愛"))
    }
}
struct catPage: View{
    let cats = ["凱蒂貓","白爛貓","湯姆貓","多拉Ａ夢","加菲貓",
                "跳跳虎","頑皮豹","其他貓貓"]
    let catlinks = ["https://www.google.com/search?q=%E5%87%B1%E8%92%82%E8%B2%93&tbm=isch&ved=2ahUKEwiEuILR_MLsAhUXAaYKHTXaCJ8Q2-cCegQIABAA&oq=%E5%87%B1%E8%92%82%E8%B2%93&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAA6BAgAEBhQ_7UmWOTBJmCDxyZoAHAAeACAASSIAaECkgEBOZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=cL2OX4TAKZeCmAW1tKP4CQ&bih=920&biw=1338&hl=zh-TW&hl=zh-TW","https://www.google.com/search?q=%E7%99%BD%E7%88%9B%E8%B2%93&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjs-vuG_8LsAhVEyYsBHRLTDtEQ_AUoAXoECAQQAw&biw=1354&bih=920","https://www.google.com/search?q=%E6%B9%AF%E5%A7%86%E8%B2%93&tbm=isch&ved=2ahUKEwjoz4GI_8LsAhUxzYsBHX-GBPkQ2-cCegQIABAA&oq=%E6%B9%AF%E5%A7%86%E8%B2%93&gs_lcp=CgNpbWcQAzIFCAAQsQMyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAA6BAgAEBhQzWVYwnRgmndoAHAAeACAAR6IAaYCkgECMTGYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABAMABAQ&sclient=img&ei=_L-OX-jhNbGar7wP_4ySyA8&bih=920&biw=1354","https://www.google.com/search?q=%E5%A4%9A%E6%8B%89a%E5%A4%A2&tbm=isch&ved=2ahUKEwjx386P_8LsAhVkzYsBHZezB5cQ2-cCegQIABAA&oq=%E5%A4%9A%E6%8B%89&gs_lcp=CgNpbWcQARgBMgUIABCxAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADoECAAQGFD0WliyaGCjkQFoAXAAeACAAS-IAccCkgECMTCYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=DMCOX_GpMuSar7wPl-eeuAk&bih=920&biw=1354","https://www.google.com/search?q=%E5%8A%A0%E8%8F%B2%E8%B2%93&tbm=isch&tbs=rimg:CRyQJREf8_1vMYepJVe3X5oOV&hl=zh-TW&sa=X&ved=0CBsQuIIBahcKEwiYtMyo_8LsAhUAAAAAHQAAAAAQBw&biw=1338&bih=920","https://www.google.com/search?q=%E8%B7%B3%E8%B7%B3%E8%99%8E&tbm=isch&ved=2ahUKEwjD6KWr_8LsAhVD15QKHf3JBRkQ2-cCegQIABAA&oq=%E8%B7%B3%E8%B7%B3%E8%99%8E&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAA6BAgAEBg6BQgAELEDUJClAVj9sAFgnLMBaABwAHgAgAEkiAHQApIBAjExmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=RsCOX8OtNcOu0wT9k5fIAQ&bih=920&biw=1338&hl=zh-TW","https://www.google.com/search?q=%E9%A0%91%E7%9A%AE%E8%B1%B9&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiih9y8_8LsAhXMEqYKHb50AmoQ_AUoAXoECAcQAw&biw=1354&bih=920","https://www.google.com/search?q=%E8%B2%93%E5%92%AA&tbm=isch&ved=2ahUKEwiT3q3O_MLsAhUB5JQKHf7ZA8EQ2-cCegQIABAA&oq=%E8%B2%93%E5%92%AA&gs_lcp=CgNpbWcQAzICCAAyBQgAELEDMgUIABCxAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAA6BggAEAcQHlCSI1iRJGDfJWgAcAB4AIABHIgBNJIBATKYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=a72OX9P8BYHI0wT-s4-IDA&bih=920&biw=1338&hl=zh-TW&hl=zh-TW#imgrc=anal5N6_jrCenM"]
    var body: some View{
        TabView{
            ForEach(cats.indices){(index) in
                Link(destination: URL(string: catlinks[index])!, label:{ VStack{Text(cats[index]).font(.largeTitle)
                        Image(cats[index])
                        .resizable()
                        .scaledToFill()
                        .clipped()
                    }
                })
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .navigationTitle(Text("就給你看一點貓貓！"))
    }
    
}
struct rabitPage: View {
    @State private var scale: CGFloat = 01
    @State private var brightnessNumber: Double = 0
    @State private var rotation: Double = 0
    @State private var rotation3D: Double = 0
    @State private var blur: CGFloat = 0
    @State private var contrast: Double = 1
    @State private var gray: Double = 1
    @State private var rotateDegree: Double = 0
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    var body: some View {
        TabView{
            GeometryReader {geometry in
                VStack{
                    Image("跳兔子")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.width / 4*3)
                        .clipped()
                        .scaleEffect(scale)
                        .brightness(brightnessNumber)
                        .rotationEffect(.degrees(rotation))
                        .rotation3DEffect(.degrees(rotation3D), axis: (x: 0.0, y: 1.0, z: 0.0))
                        .border(Color.gray)
                        .blur(radius:blur)
                        .contrast(contrast)
                        .grayscale(gray)
                    Form{
                        Group{
                            HStack{
                                Text("大小")
                                Slider(value: $scale, in: 0...1, minimumValueLabel: Image(systemName: "minus.magnifyingglass").imageScale(.small), maximumValueLabel: Image(systemName: "plus.magnifyingglass").imageScale(.large)){   }
                                        .accentColor(.red)
                            }
                        }
                        Group{
                            HStack{
                                Text("亮度")
                                Slider(value: $brightnessNumber, in: 0...0.8, minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small), maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)){   }
                                        .accentColor(.orange)
                            }
                        }
                        Group{
                            HStack{
                                Text("旋轉")
                                Slider(value: $rotation, in: 0...360, minimumValueLabel: Image(systemName: "rotate.right.fill").imageScale(.small), maximumValueLabel: Image(systemName: "rotate.right.fill").imageScale(.large)){   }
                                        .accentColor(.yellow)
                            }
                        }
                        Group{
                            HStack{
                                Text(" 3D ")
                                Slider(value: $rotation3D, in: 0...360, minimumValueLabel: Image(systemName: "arrow.left.and.right.righttriangle.left.righttriangle.right.fill").imageScale(.small), maximumValueLabel: Image(systemName: "arrow.left.and.right.righttriangle.left.righttriangle.right.fill").imageScale(.large)){   }
                                    .accentColor(.green)
                            }
                        }
                        Group{
                            HStack{
                                Text("模糊")
                                Slider(value: $blur, in: 0...30, minimumValueLabel: Image(systemName: "drop.fill").imageScale(.small), maximumValueLabel: Image(systemName: "drop.fill").imageScale(.large)){   }
                                        .accentColor(.blue)
                            }
                        }
                        Group{
                            HStack{
                                Text("對比")
                                Slider(value: $contrast, in: 1...5, minimumValueLabel: Image(systemName: "square.lefthalf.fill").imageScale(.small), maximumValueLabel: Image(systemName: "square.lefthalf.fill").imageScale(.large)){   }
                                        .accentColor(.purple)
                            }
                        }
                        Group{
                            HStack{
                                Text("灰階")
                                Slider(value: $gray, in: 1...20, minimumValueLabel: Image(systemName: "pencil.tip.crop.circle.badge.minus").imageScale(.small), maximumValueLabel: Image(systemName: "pencil.tip.crop.circle.badge.plus").imageScale(.large)){   }
                                        .accentColor(.purple)
                            }
                        }
                    }
                }
            }
            .tabItem { Image(systemName:"photo")
                Text("edit Rabit")}
            VStack {
               Button("轉吧，兔子") {
                  rotateDegree = 360
               }
               .font(.title)
               Image("跳兔子")
                .clipShape(Circle())
                  .rotationEffect(.degrees(rotateDegree))
                  .animation(
                     Animation.linear(duration: 2)
                         .repeatCount(1, autoreverses: false)
                  )
            }
            .tabItem { Image(systemName:"photo")
                Text("rotate Rabit")
            }
        VStack {
            Button("搖吧，兔子") {
                    moveDistance += 50
                }
                .font(.title)
                HStack {
                    Image("跳兔子")
                        .clipShape(Circle())
                        .animation(.spring(dampingFraction: 0.1))
                        .offset(x: moveDistance, y: 0)
                    Spacer()
                }
            }
            .tabItem { Image(systemName:"photo")
                Text("shake Rabit")
            }
        }
        .navigationTitle("你看！這裡有一隻兔兔")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}
