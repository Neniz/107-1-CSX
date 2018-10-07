# Hw_2 Web Crawler
目標 : 在pchome網站搜尋mac
## 過程
載入套件knitr 、httr
```
library(knitr)
knitr::opts_chunk$set(echo = TRUE)
library(httr)
```
透過res_json$prods爬出各個品項的資料，並存入mac_df
```
url <- "https://ecshweb.pchome.com.tw/search/v3.3/all/results?q=mac&page=1&sort=rnk/dc"
res <- GET(url)
res_json <- content(res)
mac_df <- data.frame(do.call(rbind,res_json$prods))
```


## 問題
這個url其實是觀察作業範例及同學的作業直接改的，不太清楚要怎麼找（從chrome的開發人員工具network那邊找到的request url都無法使用）

## 結果
```
kable(mac_df)
```



|Id               |cateId |picS                                         |picB                                         |name                                                                              |describe                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |price |originPrice |author |brand |publishDate |sellerId |isPChome |isNC17 |couponActid |BU |
|:----------------|:------|:--------------------------------------------|:--------------------------------------------|:---------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----|:-----------|:------|:-----|:-----------|:--------|:--------|:------|:-----------|:--|
|DYAJBD-19009C3NE |DYAJBD |/items/DYAJBD19009C3NE/000002_1538446548.png |/items/DYAJBD19009C3NE/000001_1538446548.jpg |MacBook Pro 13-inch : 2.3GHz dual-core i5, 128GB - Space Grey (MPXQ2TA/A)         |限時優惠★再贈傳輸線MacBook Pro 13-(太空灰) : 2.3GHz dual-core i5, 128GB - Space Grey太空灰 (MPXQ2TA/A\r\n★此機型無觸控列和touch id 

商品特色
● 2.3 ghz 處理器 
● 128 gb 儲存空間
● 2.3 ghz 雙核心第七代 intel core i5 處理器
● turbo boost 可達 3.6 ghz
● 8 gb 2133 mhz lpddr 3 記憶體
● 128 gb ssd 儲存裝置
● intel iris plus graphics 640
● 兩個 thunderbolt 3 埠

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |38900 |38900       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBL-19009C9HE |DYAJBL |/items/DYAJBL19009C9HE/000002_1538532360.jpg |/items/DYAJBL19009C9HE/000001_1538532360.jpg |MacBook Air 13-inch: 1.8GHz dual-core Intel Core i5, 128GB (MQD32TA/A)            |▼限時狂降★再贈對傳線▼MacBook Air 13-inch: 1.8GHz dual-core Intel Core i5, 128GB (MQD32TA/A)\r\n● intel core  i5 處理器
● intel hd graphics 6000
● ssd 儲存裝置
● 長達 12 小時電池續航力
● 802.11 ac wi-fi
● multi - touch 觸控式軌跡板
● 最長可達 30 天待機時間
● 節能低耗又兼具高效能的設計


館長小叮嚀：儲值購買最划算～
【週2限定】刷指定卡買8 000儲值金
送300刷卡金+260加碼金→最高回饋560(=7%)↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |29900 |29900       |       |      |            |         |1        |0      |list()      |ec |
|DYAJCS-19009FXVG |DYAJCS |/items/DYAJCS19009FXVG/000002_1538028198.jpg |/items/DYAJCS19009FXVG/000001_1538028198.jpg |MacBook Pro13 Touch Bar: 2.3GHz quad-core 8th- Intel Core i5 , 256GB - Space Grey |95折優惠再贈傳輸線★2018新款觸控MacBook Pro13 Touch Bar: 2.3GHz quad-core 8th- Intel Core i5 , 256GB - Space Grey 太空灰 (MR9Q2TA/A)\r\n95折優惠★再送傳輸線《★限量搶購》 
數量有限，售完為止
網路價$57900．限時價↘$５５００５

商品特色
• 4 核心 intel core i5 處理器
• 具備原彩顯示技術的亮麗 retina 顯示器
• 觸控列和 touch id
• intel iris plus graphics 655
• 超快速 ssd
• 四個 thunderbolt 3 (usb-c) 埠
• 長達 10 小時電池續航力2
• 802.11ac wi-fi
• 力度觸控板

9月刷卡優惠限量需登錄
↑銀行送1400詳情請點圖片了解

館長小叮嚀：先儲值再購物超划算～
【9月儲值天天返利超有感】刷指定卡購買pchome儲值金
→最高返利 1400 刷卡金 (限量，限1期)↑儲值返利1400詳情請點圖片了解

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |55005 |55005       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBL-19009FB34 |DYAJBL |/items/DYAJBL19009FB34/000002_1537343899.jpg |/items/DYAJBL19009FB34/000001_1537343899.jpg |MacBook Air 13-inch: 1.8GHz dual-core Intel Core i5, 128GB (MQD32TA/A)            |▼限時9折優惠▼MacBook Air 13-inch: 1.8GHz dual-core Intel Core i5, 128GB (MQD32TA/A)\r\n★限時優惠 數量有限，售完為止
網路價$31900．限時價↘$２８７１０

● intel core  i5 處理器
● intel hd graphics 6000
● ssd 儲存裝置
● 長達 12 小時電池續航力
● 802.11 ac wi-fi
● multi - touch 觸控式軌跡板
● 最長可達 30 天待機時間
● 節能低耗又兼具高效能的設計


館長小叮嚀：儲值購買最划算～
【週4限定】刷指定卡買15 000儲值金
送2%加碼金+6%(聯名紅利+p幣)→最高回饋8%↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解


注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |28710 |28710       |       |      |            |         |1        |0      |list()      |ec |
|DSAEA9-A90062D4O |DSAEA9 |/items/DSAEA9A90062D4O/000002_1478429228.jpg |/items/DSAEA9A90062D4O/000001_1538731311.jpg |Adobe Lightroom 6 / CC 中文版 for win/mac 盒裝版                                  |▼每日強檔‧瘋殺特賣▼Adobe Lightroom 6 中文版 for win/mac 盒裝版\r\n《限時狂降★週一10點回價》 
開始﹕１０／０５(星期五)１８：００  
結束﹕１０／０８(星期一)１０：００
原價$6450．限時價↘$5805

數量有限！要搶要快
============================
★『本商品內附贈的軟體 一旦開通後即無法註銷。
日後需辦理退貨時，經本公司確認，內含附軟體如被註冊，可能需要另外酌收額外的費用。 
在您還不確定是否要辦理退貨以前，請勿將軟體開通。』


◆輕鬆製作 hdr 影像 
◆以令人驚豔的全景創造極度寬廣的場景 
◆取得更快速的效能 
◆使用臉孔辨識功能輕鬆尋找特定人士的相片 
◆建立包含靜態影像、音樂和效果的視訊幻燈片


館長小叮嚀：儲值購買最划算～
【週567限定】刷指定卡買5 000儲值金
送250刷卡金+140加碼金→最高回饋390(=7.8%)↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解                                                                                                                                                                                                                                                                                                                                                                                                                                |5805  |5805        |       |      |            |         |1        |0      |list()      |ec |
|DCAV1X-A9008VYZL |DCAV1T |/items/DCAV1XA9008VYZL/000002_1522228972.jpg |/items/DCAV1XA9008VYZL/000001_1537321063.jpg |蒙恬 點譯筆 (Win/Mac/Android)                                                     |蒙恬 點譯筆 (Win/Mac/Android)\r\n【今天買，加碼送100元 7-11禮券一張】
★紙本書面資料，外語一點即譯，輕巧易攜
☆支援中、英、日、韓等多國語系辨識翻譯
★在電腦瀏覽網站 文件時，滑鼠一點即可查單字
☆筆身內建高解析度鏡頭，可隨時拍攝紙本資料

 ▌9 4-12 31★送威秀電影票領取辦法 ▌
★點此連結前往領取頁面說明★                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |1990  |1990        |       |      |            |         |1        |0      |list()      |ec |
|DCADHZ-A9008CTGG |DCADLA |/items/DCADHZA9008CTGG/000002_1530186312.jpg |/items/DCADHZA9008CTGG/000001_1503307976.jpg |innowatt DOCK Pro+ Thunderbolt Type-C Hub for MacBook Pro 多功能充電傳輸集線器    |七合一多功能充電傳輸集線器 for MacBook Pro with Thunderbolt 3 & HDMI (代號iW71)\r\n1.多功能集線器進階pro thunderbolt版 (iw71)
2.無線收納超easy，輕薄短小放pocket 
3.為熱愛macbook pro的用戶們量身打造 
4.首款雙type-c公座且正反皆可用的hub 
5.usb-c1具thunderbolt 3 (40gb）傳輸規格 
6.usb-c1母座可支援pd充電 5k video輸出 雙屏4k輸出 
7.usb-c2母座可支援資料高速傳輸5gb s
8.本款具備hdmi 19pin母座插槽1080p@60hz & 4k@30hz
9.本產品適用macbook pro型號a1706  a1707  a1708
★本產品無法滿足用戶欲使用保護殼之需求                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |2190  |2190        |       |      |            |         |1        |0      |list()      |ec |
|DYAJBD-19009C3LV |DYAJBD |/items/DYAJBD19009C3LV/000002_1534832225.png |/items/DYAJBD19009C3LV/000001_1535941748.jpg |MacBook Pro 13-inch: 2.3GHz dual-core i5, 128GB - Silver (MPXR2TA/A)              |降3千送傳輸線MacBook Pro 13-(銀色): 2.3GHz dual-core i5, 128GB - Silver銀色 (MPXR2TA/A\r\n★此機型無觸控列和touch id 

商品特色
● 2.3 ghz 處理器 
● 128 gb 儲存空間
● 2.3 ghz 雙核心第七代 intel core i5 處理器
● turbo boost 可達 3.6 ghz
● 8 gb 2133 mhz lpddr 3 記憶體
● 128 gb ssd 儲存裝置
● intel iris plus graphics 640
● 兩個 thunderbolt 3 埠

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |38900 |38900       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBF-19009EKD0 |DYAJBF |/items/DYAJBF19009EKD0/000002_1538447055.png |/items/DYAJBF19009EKD0/000001_1538713702.jpg |MacBook Pro 13-inch : 2.3GHz dual-core i5, 512GB - Silver (Z0UL000E3)             |週末限定★93折優惠特規升級Ram16GB/SSD 512GBMacBook Pro 13-inch : 2.3GHz dual-core i5, 512GB - Silver (Z0UL000E3)\r\n《週末限定★93折優惠 再贈好禮》
 
開始﹕１０／０５(星期五)１８：００ 
結束﹕１０／０８(星期一)１０：００ 
網路價$60420．
限時價↘$５６１９０

★此機型無觸控列和touch id 

★此商品為規格特製機
●原ram8gb↗升級16gb 
●原ssd256gb↗升級512gb

★主機精典介紹
● 13 吋機型厚度 14.9 公釐，重量更僅有 1.37 公斤

● retina 顯示器亮度高達 500 尼特，可在明亮的
   光線環境下呈現更多細節

● 這款顯示器具有高對比率，色彩數更超出標準 rgb 
   顯示器 25%，因此可讓照片畫質更加逼真寫實

● thunderbolt 3 連接埠將充電、資料傳輸與視訊輸出
   三大功能集於一身

● thunderbolt 3 技術的傳輸速度高達40gbps，在傳輸
   資料速度及視訊頻寬方面都是 thunderbolt 2 的兩倍

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                     |56190 |56190       |       |      |            |         |1        |0      |list()      |ec |
|DCAE86-A9009D3Q1 |DCAE86 |/items/DCAE86A9009D3Q1/000002_1535534610.jpg |/items/DCAE86A9009D3Q1/000001_1538444751.jpg |EPSON L385 高速WiFi 無線四合一原廠連續供墨複合機                                  |▼線上3C★百貨慶▼EPSON L385 高速 wifi四合一連續供墨印表機\r\n《限時降五百↘輕鬆印報告》 
開始﹕１０／２（二）１０：００
結束﹕１０／９（二）１０：００
網路價$5490．限時價↘$4990

★加碼送相紙
★第１重：限時降$500(原網路價$5490)
★第２重：加購１組墨水登錄送2年保固
★第３重：加購２組墨水8折登錄送2年保固
★到府安裝加購只要$499
＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
【省】→墨水288元可印4000張
【快】→黑33ppm 彩15ppm
【美】→原廠墨水高品質 免歸零 免堵塞
【安心】→機器壽命3萬張
功能：列印 影印 掃描 無線
墨水印量︰4000頁(黑) 6500頁(彩色) 
列印速度(黑 彩)︰33 15 ppm 
列印解析度︰5760x1440 dpi 
傳輸介面︰usb2.0、ieee 802.11b g n
紙張處理︰100張進紙
作業系統︰windows、mac os
墨水匣：四色分離式墨匣
其他：隨機內附黑色墨水×1+彩色墨水×3
雲端列印：iprint  email print  remote print
保固：1年保固
 ★列印成本免費計算網址★

 ▌加購墨水登錄送保固★點此前往 ▌
★加購墨水一組▼登錄升級2年保★

★epson到府安裝加購★



★注意：主機售價低於$4990價格，即無法享有原廠登錄贈品，僅加購墨水活動適用，請留意，謝謝。


館長小叮嚀：儲值購買最划算～
【10月限定】刷指定卡買3 000儲值金
送120刷卡金→最高回饋4%↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解 |4990  |4990        |       |      |            |         |1        |0      |list()      |ec |
|DYAJCS-19009FXVY |DYAJCS |/items/DYAJCS19009FXVY/000002_1538028016.jpg |/items/DYAJCS19009FXVY/000001_1538028016.jpg |MacBook Pro15 Touch Bar: 2.2GHz 6-core 8th- Intel Core i7, 256GB - Silver         |95折優惠再贈傳輸線★2018新款觸控MacBook Pro15 Touch Bar：2.2GHz 6-core 8th- Intel Core i7, 256GB - Silver 銀色 (MR962TA/A)\r\n95折優惠★再送傳輸線《★限量搶購》 
數量有限，售完為止
網路價$77900．限時價↘$７４００５

商品特色
• 6 核心 intel core i7 處理器
• 具備原彩顯示技術的亮麗 retina 顯示器
• 觸控列和 touch id
• radeon pro 555x 繪圖處理器配備 4gb 視訊記憶體
• intel uhd graphics 630
• 超快速 ssd
• 四個 thunderbolt 3 (usb-c) 埠
• 長達 10 小時電池續航力
• 802.11ac wi-fi
• 力度觸控板

9月刷卡優惠限量需登錄
↑銀行送1400詳情請點圖片了解

館長小叮嚀：先儲值再購物超划算～
【9月儲值天天返利超有感】刷指定卡購買pchome儲值金
→最高返利 1400 刷卡金 (限量，限1期)↑儲值返利1400詳情請點圖片了解

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |74005 |74005       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBF-19009EKD6 |DYAJBF |/items/DYAJBF19009EKD6/000002_1538359494.png |/items/DYAJBF19009EKD6/000001_1538735040.jpg |MacBook Pro 13-inch : 2.3GHz dual-core i5, 256GB - Space Grey (Z0UK0001J)         |▼每日強檔‧加碼再送好禮▼特規升級Ram16GBMacBook Pro 13-inch : 2.3GHz dual-core i5, 256GB - Space Grey (Z0UK0001J)\r\n《限時狂降★93折優惠 再贈好禮》 
 
開始﹕１０／０８(星期一)１０：００ 
結束﹕１０／０９(星期二)１０：００ 

網路價$54420
限時價↘$５０６１０

★此機型無觸控列和touch id 

★此商品為規格特製機
●原ram8gb↗升級16gb 

★主機精典介紹
● 13 吋機型厚度 14.9 公釐，重量更僅有 1.37 公斤

● retina 顯示器亮度高達 500 尼特，可在明亮的
   光線環境下呈現更多細節

● 這款顯示器具有高對比率，色彩數更超出標準 rgb 
   顯示器25%，因此可讓照片畫質更加逼真寫實

● thunderbolt 3 連接埠將充電、資料傳輸與視訊輸出
   三大功能集於一身

● thunderbolt 3 技術的傳輸速度高達40gbps，在傳輸
   資料速度及視訊頻寬方面都是 thunderbolt 2 的兩倍

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                            |52420 |52420       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBO-A90099447 |DYAJBO |/items/DYAJBOA90099447/000002_1536738236.jpg |/items/DYAJBOA90099447/000001_1538445593.jpg |iMac21.5-inch with Retina 4K display: 3.0GHz quad-core Intel Core i5 (MNDY2TA/A)  |超值降92折優惠iMac21.5-inch with Retina 4K display: 3.0GHz quad-core Intel Core i5 (MNDY2TA/A)\r\n數量有限，售完為止
網路價$41900．
限時價↘$３８５４８

● 4096 x 2300 解析度
● 5公釐纖薄設計
● intel core i5 處理器
● 802.11 ac wi-fi + 藍牙 4.2
● magic mouse 2
● magic keyboard


館長小叮嚀：儲值購買最划算～
【週2限定】刷指定卡買8 000儲值金
送300刷卡金+260加碼金→最高回饋560(=7%)↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解


注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |38548 |38548       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBD-19009C3NG |DYAJBD |/items/DYAJBD19009C3NG/000002_1534832182.png |/items/DYAJBD19009C3NG/000001_1538446475.jpg |MacBook Pro 13-inch : 2.3GHz dual-core i5, 256GB - Silver (MPXU2TA/A)             |限時優惠★再贈傳輸線MacBook Pro 13-inch : 2.3GHz dual-core i5, 256GB - Silver銀色 (MPXU2TA/A)\r\n★此機型無觸控列和touch id 

商品特色
● 2.3 ghz 處理器 
● 256 gb 儲存空間
● 2.3 ghz 雙核心第七代 intel core i5 處理器
● turbo boost 可達 3.6 ghz
● 8 gb 2133 mhz lpddr 3 記憶體
● 256 gb ssd 儲存裝置
● intel iris plus graphics 640
● 兩個 thunderbolt 3 埠

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |44900 |44900       |       |      |            |         |1        |0      |list()      |ec |
|DYAJBE-19009FZI2 |DYAJBE |/items/DYAJBE19009FZI2/000002_1538447131.png |/items/DYAJBE19009FZI2/000001_1538648478.jpg |MacBook Pro 13-inch : 2.5GHz dual-core i7, 512GB - Silver (Z0UL000KL)             |限時狂降★週一10點回價特規Ram16GB/CPU i7/SSD 512GBMacBook Pro 13-inch : 2.5GHz dual-core i7, 512GB - Silver (Z0UL000KL)\r\n《限時狂降★93折優惠 再贈好禮》 
開始﹕１０／０５(星期五)１０：００ 
結束﹕１０／０８(星期一)１０：００ 

網路價$70200．
限時價↘$ ６５２８６

★此機型無觸控列和touch id 

★此商品為規格特製機
●原ram8gb↗升級16gb 
●原cpu2.3ghz i5↗升級2.5ghz i7 
●原ssd256gb↗升級512gb

★主機精典介紹
● 13 吋機型厚度 14.9 公釐，重量更僅有 1.37 公斤

● retina 顯示器亮度高達 500 尼特，可在明亮的
   光線環境下呈現更多細節

● 這款顯示器具有高對比率，色彩數更超出標準 rgb 
   顯示器 25%，因此可讓照片畫質更加逼真寫實

● thunderbolt 3 連接埠將充電、資料傳輸與視訊輸出
   三大功能集於一身

● thunderbolt 3 技術的傳輸速度高達40gbps，在傳輸
   資料速度及視訊頻寬方面都是 thunderbolt 2 的兩倍


館長小叮嚀：儲值購買最划算～
【10月限定】刷指定卡買3 000儲值金
送120刷卡金→最高回饋4%↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解


注意事項                                                                                                                                                                                                      |65286 |65286       |       |      |            |         |1        |0      |list()      |ec |
|DYAJCS-19009FXW3 |DYAJCS |/items/DYAJCS19009FXW3/000002_1538028083.jpg |/items/DYAJCS19009FXW3/000001_1538028083.jpg |MacBook Pro15 Touch Bar: 2.6GHz 6-core 8th- Intel Core i7, 512GB - Space Grey     |95折優惠再贈傳輸線★2018新款觸控MacBook Pro15 Touch Bar：2.6GHz 6-core 8th- Intel Core i7, 512GB - Space Grey 太空灰 (MR942TA/A)\r\n95折優惠★再送傳輸線《★限量搶購》 
數量有限，售完為止
網路價$89900．限時價↘$８５４０５

商品特色
• 6 核心 intel core i7 處理器
• 具備原彩顯示技術的亮麗 retina 顯示器
• 觸控列和 touch id
• radeon pro 560x 繪圖處理器配備 4gb 視訊記憶體
• intel uhd graphics 630
• 超快速 ssd
• 四個 thunderbolt 3 (usb-c) 埠
• 長達 10 小時電池續航力
• 802.11ac wi-fi
• 力度觸控板

9月刷卡優惠限量需登錄
↑銀行送1400詳情請點圖片了解

館長小叮嚀：先儲值再購物超划算～
【9月儲值天天返利超有感】刷指定卡購買pchome儲值金
→最高返利 1400 刷卡金 (限量，限1期)↑儲值返利1400詳情請點圖片了解

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |85405 |85405       |       |      |            |         |1        |0      |list()      |ec |
|DYAJCS-19009FXX9 |DYAJCS |/items/DYAJCS19009FXX9/000002_1538028302.jpg |/items/DYAJCS19009FXX9/000001_1538028302.jpg |MacBook Pro13 Touch Bar: 2.3GHz quad-core 8th- Intel Core i5, 512GB - Space Grey  |95折優惠再贈傳輸線★2018新款觸控MacBook Pro13 Touch Bar: 2.3GHz quad-core 8th- Intel Core i5, 512GB - Space Grey 太空灰 (MR9R2TA/A)\r\n95折優惠★再送傳輸線 《★限量搶購》 
數量有限，售完為止
網路價$63900．限時價↘$６０７０５

商品特色
• 4 核心 intel core i5 處理器
• 具備原彩顯示技術的亮麗 retina 顯示器
• 觸控列和 touch id
• intel iris plus graphics 655
• 超快速 ssd
• 四個 thunderbolt 3 (usb-c) 埠
• 長達 10 小時電池續航力
• 802.11ac wi-fi
• 力度觸控板

9月刷卡優惠限量需登錄
↑銀行送1400詳情請點圖片了解

館長小叮嚀：先儲值再購物超划算～
【9月儲值天天返利超有感】刷指定卡購買pchome儲值金
→最高返利 1400 刷卡金 (限量，限1期)↑儲值返利1400詳情請點圖片了解

注意事項                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |60705 |60705       |       |      |            |         |1        |0      |list()      |ec |
|DMAABB-A9008TZ2C |DMAABB |/items/DMAABBA9008TZ2C/000002_1520400797.jpg |/items/DMAABBA9008TZ2C/000001_1536720007.jpg |Google Chromecast HDMI Streaming Media Player (NC2-6A5-PCH)                       |▼百萬上班族激推▼新一代Chromecast HDMI 媒體串流播放器\r\n指間上的精彩 完美在電視呈現

將 youtube、spotify、netflix、kkbox 等app，或chrome瀏覽器內容投放至電視
支援多種平台(android、iphone®、ipad®、windows®、mac®和chromebook)
您的裝置就是您的專屬遙控器
三步驟設定超簡單，即插即用
原廠公司貨，維修有保障                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |1445  |1445        |       |      |            |         |1        |0      |list()      |ec |
|DCADHZ-A9008WQYY |DCADJ5 |/items/DCADHZA9008WQYY/000002_1523094391.jpg |/items/DCADHZA9008WQYY/000001_1523094391.jpg |New MacBook Pro hub Type-C轉USB轉接器mac轉換頭 多功能充電集線器-T8                |WIWU type-c轉VGA 轉換器USB 3.1 Type-C HDMI 7 port 多功能集線器【銀色】▼新款專用 雙介面▼\r\n▼new macbook的最佳搭檔▼
◆ 一物多用，連接多種設備
◆ typec接口設計，可雙向充電、傳輸
◆ 支援快充技術，辦公必備的mac搭檔
◆ type-c充電，邊充邊玩不掉電
◆ 支援 4k hdmi轉接、sd讀卡機
◆ 四重保護，讓您使用起來更放心
◆ 加碼贈送特製收納包，方便攜帶不易刮傷筆電
◆ macbook pro新款專用

▼注意事項▼：
★ 購買時請注意，此款產品為macbook專用的，其他品牌的筆電有一些是不能支援使用的
★ 提醒若macbook pro僅單邊一個usb-c埠，不建議購買此配件 

★其他顏色可選擇★ 
►►鈦金灰                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |2299  |2299        |       |      |            |         |1        |0      |list()      |ec |
|DYAJBE-19009FZP9 |DYAJBE |/items/DYAJBE19009FZP9/000002_1538447084.png |/items/DYAJBE19009FZP9/000001_1538648358.jpg |MacBook Pro 13-inch : 2.5GHz dual-core i7, 512GB - Space Grey (Z0UK000NT)         |限時狂降★週一10點回價特規Ram16GB/CPU i7/SSD 512GBMacBook Pro 13-inch : 2.5GHz dual-core i7, 512GB - Space Grey (Z0UK000NT)\r\n《限時狂降★93折優惠 再贈好禮》 
開始﹕１０／０５(星期五)１０：００ 
結束﹕１０／０８(星期一)１０：００ 

網路價$70200．
限時價↘$ ６５２８６

★此機型無觸控列和touch id 

★此商品為規格特製機
●原ram8gb↗升級16gb 
●原cpu2.3ghz i5↗升級2.5ghz i7 
●原ssd256gb↗升級512gb

★主機精典介紹
● 13 吋機型厚度 14.9 公釐，重量更僅有 1.37 公斤

● retina 顯示器亮度高達 500 尼特，可在明亮的
   光線環境下呈現更多細節

● 這款顯示器具有高對比率，色彩數更超出標準 rgb 
   顯示器 25%，因此可讓照片畫質更加逼真寫實

● thunderbolt 3 連接埠將充電、資料傳輸與視訊輸出
   三大功能集於一身

● thunderbolt 3 技術的傳輸速度高達40gbps，在傳輸
   資料速度及視訊頻寬方面都是 thunderbolt 2 的兩倍


館長小叮嚀：儲值購買最划算～
【10月限定】刷指定卡買3 000儲值金
送120刷卡金→最高回饋4%↑10月儲值優惠活動，請點我

10月刷卡優惠 限量需登錄
↑銀行刷卡活動詳情請點圖片了解


注意事項                                                                                                                                                                                                  |65286 |65286       |       |      |            |         |1        |0      |list()      |ec |