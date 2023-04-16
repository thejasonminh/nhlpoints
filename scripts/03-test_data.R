#### Preamble ####
# Purpose: Tests the master dataframes against bound checks defined in the simulation script
# Author: Jason Ngo
# Data: Apr 16 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(here)

agfpg_12seasons <- read.csv(here::here("outputs/data/avgoals_12seasons.csv"))
shots_12seasons <- read.csv(here::here("outputs/data/avshots_12seasons.csv"))
pp_12seasons <- read.csv(here::here("outputs/data/pp_12seasons.csv"))

#### Test data ####

## Let's test if there are 12 columns in each master dataset ##

agfpg_12seasons |> unique() |> count()
shots_12seasons |> unique() |> count()
pp_12seasons |> unique() |> count()

## Let's test if average goals is less than 5 and greater than 1. AKA is it a realistic value ##
agfpg_12seasons$Avg_Goals_Game < 10
agfpg_12seasons$Avg_Goals_Game > 0

## Let's test if shots per game is less than 45 and greater than 20. AKA is it a realistic value ##
shots_12seasons$Shots_Per_Game > 20
shots_12seasons$Shots_Per_Game < 45

## Let's test if PP percentage is less than 40 and greataer than 5. AKA is it a realistic value ##
pp_12seasons$Power_play_percentage > 5
pp_12seasons$Power_play_percentage < 40
