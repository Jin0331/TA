install.packages(c("DBI", "RSQLite"))
library(DBI)
library(RSQLite)
library(tidyverse)

getwd()

con <- RSQLite::dbConnect(drv = RSQLite::SQLite(), dbname = "20185304_허주환.sqlite")
dbListTables(con)[1]
tbl(con, dbListTables(con)[1]) 
dbDisconnect(con)
