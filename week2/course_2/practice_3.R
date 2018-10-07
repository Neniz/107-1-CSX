### practice_3
### Crawler Example

### Crawler_Example with rvest    #####################################################################
library(rvest)
# Set url
url <- "https://technews.tw/"
# Get response
res <- read_html(url)

# Parse the content and extract the titles
res_titles <- res %>% html_nodes(".entry-title a")

# Extract link
article.link <- html_attr(res_titles,"href") #這裡不太懂

# Extract titles
article.title <- html_text(res_titles)


# Create dataframe
article.df <- data.frame(article.title, article.link)

# Set df's colnames
article.df.colnames <- c("title", "link")
colnames(article.df) <- article.df.colnames

write.csv(article.df, file="W2_practice_article.csv")


