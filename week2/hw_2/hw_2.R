library(knitr)
knitr::opts_chunk$set(echo = TRUE)
library(httr)

url <- "https://ecshweb.pchome.com.tw/search/v3.3/all/results?q=mac&page=1&sort=rnk/dc"
res <- GET(url)
res_json <- content(res)
mac_df <- data.frame(do.call(rbind,res_json$prods))

kable(mac_df)