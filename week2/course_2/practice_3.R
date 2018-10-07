### practice_3_Crawler 
library(rvest)

# Set url
url <- "https://technews.tw/"
# Get response
res <- read_html(url)

# Parse the content and extract the titles
res_titles <- res %>% html_nodes(".entry-title a")

# Extract link
article.link <- html_attr(res_titles,"href") 

# Extract titles
article.title <- html_text(res_titles)

#Parse and extract the date
res.date <- res %>% html_nodes(".body:nth-child(5)")
article.date <- html_text(res.date)

# Create dataframe
article.df <- data.frame(article.title, article.date, article.link)

# Set df's colnames
article.df.colnames <- c("title", "link")
colnames(article.df) <- article.df.colnames

# Save data as csv
write.csv(article.df, file="W2_practice_article.csv")



