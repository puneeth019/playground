#Use this script as a template to start any random script

load_pacakges <- c("dplyr", "stringr", "rvest", "RColorBrewer",
                   "wordcloud", "tm", "twitteR", "httr", 
                   "devtools","base64enc")
lapply(load_pacakges, require, character.only = TRUE)
  # Load Packages

WorkDir <- "~/DA/Projects/twitteR_scrape/"
setwd(dir = WorkDir)
  # Set Working Directory
