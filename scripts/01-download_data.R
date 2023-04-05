#### Preamble ####
# Purpose: Downloads data from the NHL API from seasons 2011-2012 to 2022-2023
# Author: Jason Ngo
# Data: Apr 4 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: A working internet connection


#### Workspace setup ####
library(tidyverse)
library(here)

#### Download data ####

## Manually downloaded excel files by exporting from nhl.com/stats/teams and sorting by seasons. ##

# I acknowledge that the nhl api exists and is a usable R package, however.. #
# ..isolating specific statistics by teams during a 10 year period using the API was too difficult #

#### Save data ####

teams2223 <- read_excel(here::here("inputs/data/Summaryteam_2223.xlsx"))
teams2122 <- read_excel(here::here("inputs/data/Summaryteam_2122.xlsx"))
teams2021 <- read_excel(here::here("inputs/data/Summaryteam_2021.xlsx"))
teams1920 <- read_excel(here::here("inputs/data/Summaryteam_1920.xlsx"))
teams1819 <- read_excel(here::here("inputs/data/Summaryteam_1819.xlsx"))
teams1718 <- read_excel(here::here("inputs/data/Summaryteam_1718.xlsx"))
teams1617 <- read_excel(here::here("inputs/data/Summaryteam_1617.xlsx"))
teams1516 <- read_excel(here::here("inputs/data/Summaryteam_1516.xlsx"))
teams1415 <- read_excel(here::here("inputs/data/Summaryteam_1415.xlsx"))
teams1314 <- read_excel(here::here("inputs/data/Summaryteam_1314.xlsx"))
teams1213 <- read_excel(here::here("inputs/data/Summaryteam_1213.xlsx"))
teams1112 <- read_excel(here::here("inputs/data/Summaryteam_1112.xlsx"))

         