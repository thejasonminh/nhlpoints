#### Preamble ####
# Purpose: Simulates the primary datasets of interest - league goals for per game played, league shots per game, and league powerplay percentage for 12 seasons
# Author: Jason Ngo
# Data: Apr 16 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: A working internet connection


#### Workspace setup ####
library(tidyverse)
set.seed(2223)

#### Simulate data ####
## Season column correlates to the NHL season. Column XX represents season 20XX - 20YY where YY is (XX  + 1) ##
## For example, column 16 represents season 2016 - 2017
## Avg_Goals_Game column has a min of 1, since realistically every team should average 1 goal a game atleast ##
nhlgoalsim <- tibble(
  Season = c(
    11:22
  ),
  Avg_Goals_Game = c(
    runif(n = 12, min = 1, max = 5)
  )
)
## Avg_Shots_Game column has an arbitrary min of 5 and max of 45, those values are hard to reach in a normal NHL game ##
nhlshotsim <- tibble(
  Season = c(
    11:22
  ),
  Avg_Shots_Game = c(
    runif(n = 12, min = 20, max = 45)
  )
)

## Avg_PP_Percetage column has an arbitrary min of 1 and max of 40, since those PP%'s are hard to reach in a normal NHl game ##
nhlppsim <- tibble(
  Season = c(
    11:22
  ),
  Avg_PP_Percentage = c(
    runif(n = 12, min = 5, max = 40)
  )
)

