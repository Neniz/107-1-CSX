# Course2_Practice3_Crawler
###### 目標網站：[Tech News 科技新報](https://technews.tw/)

## 過程：
匯入所需的Packages :
```
library(rvest)
```
設定目標網頁:
```
# Set url
url <- "https://technews.tw/"

# Get response
res <- read_html(url)
```
擷取文章的標題及網址：
```
# Parse the content and extract the titles
res_titles <- res %>% html_nodes(".entry-title a")

# Extract link
article.link <- html_attr(res_titles,"href") 

# Extract titles
article.title <- html_text(res_titles)
```
把標題和網址存進資料框article.df，並將article.df存成csv檔
```
# Create dataframe
article.df <- data.frame(article.title, article.link)

# Set df's colnames
article.df.colnames <- c("title", "link")
colnames(article.df) <- article.df.colnames

# Save data as csv
write.csv(article.df, file="W2_practice_article.csv")
```
## 結果
利用[Tables Generator](http://www.tablesgenerator.com/markdown_tables)將csv檔轉為markdown語法：

|    | title                                                                                                | link                      | NA                                                                                                                              |
|----|------------------------------------------------------------------------------------------------------|---------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| 1  | 台生技廠利多如雨後春筍，猛放閃                                                                       | 2018 年 10 月 07 日 15:00 | https://finance.technews.tw/2018/10/07/taiwan-biotechnology-stock/                                                              |
| 2  | 冷靜期增加一倍，刪除 Facebook 帳號後 30 天內可反悔                                                   | 2018 年 10 月 07 日 12:00 | https://technews.tw/2018/10/07/facebook-increases-account-deletion-grace-period-to-30-days/                                     |
| 3  | 舊手機、電腦螢幕都能回收再生？這 10 人做出德國大廠嚇一跳的科技                                       | 2018 年 10 月 07 日 12:00 | https://technews.tw/2018/10/07/itri-develops-waste-liquid-crystal-recycling-technology/                                         |
| 4  | 市值超過 900 億！比麥當勞貴兩倍、出餐慢 15 倍，它如何擄獲顧客的心？                                  | 2018 年 10 月 07 日 12:00 | https://finance.technews.tw/2018/10/07/do-basic-work/                                                                           |
| 5  | 雷諾發表自動駕駛 Z-Ultimo 概念車                                                                     | 2018 年 10 月 07 日 12:00 | https://technews.tw/2018/10/07/renault-ez-ultimo-at-paris-motor-show/                                                           |
| 6  | 訊息選擇有次序，大腦內建聲音過濾放大系統？                                                           | 2018 年 10 月 07 日 0:00  | https://technews.tw/2018/10/07/does-your-brain-let-you-hear-your-own-footsteps/                                                 |
| 7  | 深入百年車廠，對抗矽谷的神祕基地                                                                     | 2018 年 10 月 07 日 0:00  | https://technews.tw/2018/10/07/bmw-rd-center/                                                                                   |
| 8  | 放棄然後斷氣，「精神死亡」如何讓人走向實際死亡                                                       | 2018 年 10 月 07 日 0:00  | https://technews.tw/2018/10/07/give-up-itis-when-people-just-give-up-and-die/                                                   |
| 9  | 亞馬遜帝國揮軍，飆漲好戲還有續集                                                                     | 2018 年 10 月 07 日 0:00  | https://finance.technews.tw/2018/10/07/amazons-business-kingdom-will-continue-to-expand/                                        |
| 10 | 蘋果導入「Apple Service Toolkit 2」輔助維修工具，想自己或找第三方維修新的 MacBook 沒這工具也無法開機 | 2018 年 10 月 06 日 14:51 | https://technews.tw/2018/10/06/apple-is-using-proprietary-software-to-lock-macbook-pros-and-imac-pros-from-third-party-repairs/ |
| 11 | 蘋果亞馬遜否認遭中國駭，英國網路安全中心相挺                                                         | 2018 年 10 月 06 日 13:05 | https://technews.tw/2018/10/06/national-cyber-security-centre-talk-about-deny-chip-event/                                       |
| 12 | 研究：閱讀是大腦視覺和聽覺區域的團隊合作                                                             | 2018 年 10 月 06 日 12:57 | https://technews.tw/2018/10/06/reading-is-different-brain-parts-team-work/                                                      |
| 13 | 針對《要塞英雄》作弊者，駭客藉外掛偷取玩家比特幣                                                     | 2018 年 10 月 06 日 12:00 | https://technews.tw/2018/10/06/cryptocurrency-scammers-are-stealing-bitcoin-from-fortnite-hackers/                              |
| 14 | 恐導致車禍，豐田全球召修 240 萬輛油電車                                                              | 2018 年 10 月 06 日 11:10 | https://technews.tw/2018/10/06/toyota-car-repair/                                                                               |
| 15 | 新動物研究表明，深空旅行將嚴重損毀人體胃腸                                                           | 2018 年 10 月 06 日 10:44 | https://technews.tw/2018/10/06/galactic-cosmic-radiation-space-travel-gastrointestinal-cancer/                                  |



