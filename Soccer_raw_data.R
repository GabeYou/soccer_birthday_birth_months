library(rvest)
library(tidyverse)
raw_data <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")
x <- raw_data %>% 
  html_elements("td:nth-child(4)") %>% 
  html_text2() %>% 
  as_tibble() 

write.csv2(x, "birthdates.csv")