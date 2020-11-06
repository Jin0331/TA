install.packages(c("DBI", "RSQLite"))
library(DBI)
library(RSQLite)
library(tidyverse)

getwd()

con <- RSQLite::dbConnect(drv = RSQLite::SQLite(), dbname = "seoul_bike.sqlite")

dbListTables(con)
  
dbListFields(con, "seoul_bike")

dbGetQuery(con, "SELECT * FROM seoul_bike") %>% as_tibble() %>%
  str()
  
