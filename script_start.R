#Use this script as a template to start any random script

load_pacakges <- c("dplyr", "tidyr", "readr", "stringr",
                   "magrittr", "ggplot2", "rvest", "lubridate", 
                   "rlist", "caret", "broom")
lapply(load_pacakges, require, character.only = TRUE)
  # Load Packages

WorkDir <- "C:/DA/Projects/"
setwd(dir = WorkDir)
  # Set Working Directory
