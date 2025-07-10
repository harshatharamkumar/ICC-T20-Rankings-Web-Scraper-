install.packages("rvest")
library(rvest)
install.packages("dplyr")
library(dplyr)
install.packages("robotstxt")
library(robotstxt)

#IMPORTING LIBRARIES
library(rvest)
library(dplyr)
library(robotstxt)
#checking whether website can be scrapped
path=paths_allowed("https://sports.ndtv.com/cricket/icc-rankings/t20-batting")
#scrapping website
link <-
  "https://sports.ndtv.com/cricket/icc-rankings/t20-batting"
#HTML ELEMENTS FROM WEBSITE
web <- read_html(link)
#SEGREGATING PLAYER NAMES
Player <- web %>%
  html_nodes(".rnk_tbl-nm a span") %>% html_text()
#Viewing Player names
View(Player)
#SEGREGATING COUNTRY
Country <- web %>%
  html_nodes(".rnk_tbl-tm") %>% html_text()
#VIEW COUNTRY LIST
View(Country)
#SEGREGATING RATINGS
Rank <- web %>%
  html_nodes(".rnk_tbl-td:nth-child(1)") %>% html_text()
#VIEW RANK LIST
View(Rank)
#SEGREGATING THE RATING
Rating <- web %>%
  html_nodes(".rnk_tbl-td:nth-child(3)") %>% html_text()
#VIEWING DURATION LIST
View(Rating)
#CREATING DATAFRAME
Cricket.ratings <- data.frame(Player, Country, Rank, Rating)
#VIEW DATAFRAME
View(Cricket.ratings)
#SAVING DATA
write.csv(Cricket.ratings, "My_Cricketteam.csv")
#SAVING DATA
write.csv(Cricket.ratings, "My_Cricketteam.csv")

