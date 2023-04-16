#### Preamble ####
# Purpose: Downloads data from the NHL API from seasons 2011-2012 to 2022-2023
# Author: Jason Ngo
# Data: Apr 16 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: A working internet connection


#### Workspace setup ####
library(tidyverse)

#### Download data ####

## Manually downloaded excel files by exporting from nhl.com/stats/teams and sorting by seasons. ##
## It should be noted that the current season's stats are incomplete, there are few remaining games in the NHL season ##
## In the interest of time, I will not wait for the season to finish ##

# I acknowledge that the nhl api exists and is a usable R package, however.. #
# ..isolating specific statistics by teams during a 10 year period using the API was too difficult #

#### Save data ####

## Since data was downloaded and saved into the workspace manually, no need to save it. ##
## Saving already downloded data as a csv would be an unnecessary waste of space ##