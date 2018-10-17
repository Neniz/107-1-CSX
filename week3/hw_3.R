goldman.df <- read.csv("Goldman.csv")
library(ggplot2)
library(plotly)
#Data Structure
plot_ly(goldman.df, x = ~Location, color =~Sex, type = "histogram")

#Left Humerus Maximum Length
plot_ly(goldman.df, x = ~LHML, color = ~Location,   mode = 'markers', symbol = ~Sex, symbols = c('circle','x','o', 'square'),  type = "scatter")

library(dplyr)
Ohio.df <- data.frame(filter(goldman.df, Location == "Ohio, United States"))
Ohio.df
plot_ly(Ohio.df, x = ~Age, color =~Sex, type = "histogram")