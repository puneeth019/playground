#  `tibble` package to convert `data.frame` into `tibble`

library(tibble) #load `tibble` package
mtcars_tibble <- as_data_frame(x = mtcars) #change the class of `mtcars` into `tibble`
