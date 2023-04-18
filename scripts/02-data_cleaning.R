#### Preamble ####
# Purpose: Isolates the columns of interest, sums the data and cleans up the names of columns.
# Author: Jason Ngo
# Data: Apr 16 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(here)
library(readxl)

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
penalties <- read_excel(here::here("inputs/data/Penaltiesteams_2223.xlsx"))
shooting <- read_excel(here::here("inputs/data/teamshooting2223.xlsx"))

#### Clean data ####

### Isolating leaguewide goals per game ###

## First, let's get the average goals for per game(agfpg) leaguewide for each season ##
agfpg2223 <- teams2223 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg2122 <- teams2122 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg2021 <- teams2021 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1920 <- teams1920 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1819 <- teams1819 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1718 <- teams1718 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1617 <- teams1617 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1516 <- teams1516 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1415 <- teams1415 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1314 <- teams1314 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1213 <- teams1213 |> group_by(Season) |> summarize(mean = mean(GF/GP))
agfpg1112 <- teams1112 |> group_by(Season) |> summarize(mean = mean(GF/GP))

## Now let's combine our results into a single unified dataframe ##
agfpg_12seasons <- rbind(agfpg2223, agfpg2122)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg2021)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1920)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1819)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1718)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1617)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1516)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1415)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1314)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1213)
agfpg_12seasons <- rbind(agfpg_12seasons, agfpg1112)

## Now let's rename  the columns in our unified dataframe ##
agfpg_12seasons <- agfpg_12seasons |> rename(Avg_Goals_Game = mean)

## And let's round our values so they are a bit nicer ##
agfpg_12seasons <- round(agfpg_12seasons, 2)

### Isolating leaguewide shots for per game ###

## First, we shall rename the column Shots/GP to Shots so we can isolate it ##
teams2223 <- teams2223 |> rename("Shots_Per_Game" = "Shots/GP")
teams2122 <- teams2122 |> rename("Shots_Per_Game" = "Shots/GP")
teams2021 <- teams2021 |> rename("Shots_Per_Game" = "Shots/GP")
teams1920 <- teams1920 |> rename("Shots_Per_Game" = "Shots/GP")
teams1819 <- teams1819 |> rename("Shots_Per_Game" = "Shots/GP")
teams1718 <- teams1718 |> rename("Shots_Per_Game" = "Shots/GP")
teams1617 <- teams1617 |> rename("Shots_Per_Game" = "Shots/GP")
teams1516 <- teams1516 |> rename("Shots_Per_Game" = "Shots/GP")
teams1415 <- teams1415 |> rename("Shots_Per_Game" = "Shots/GP")
teams1314 <- teams1314 |> rename("Shots_Per_Game" = "Shots/GP")
teams1213 <- teams1213 |> rename("Shots_Per_Game" = "Shots/GP")
teams1112 <- teams1112 |> rename("Shots_Per_Game" = "Shots/GP")

## Now let's gets the mean for that column by each season ##
shots2223 <- teams2223 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots2122 <- teams2122 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots2021 <- teams2021 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1920 <- teams1920 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1819 <- teams1819 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1718 <- teams1718 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1617 <- teams1617 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1516 <- teams1516 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1415 <- teams1415 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1314 <- teams1314 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1213 <- teams1213 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))
shots1112 <- teams1112 |> group_by(Season) |> summarize(mean = mean(Shots_Per_Game))

## Once again we shall combine our results into a unified dataframe ##
shots_12seasons <- rbind(shots2223, shots2122)
shots_12seasons <- rbind(shots_12seasons, shots2021)
shots_12seasons <- rbind(shots_12seasons, shots1920)
shots_12seasons <- rbind(shots_12seasons, shots1819)
shots_12seasons <- rbind(shots_12seasons, shots1718)
shots_12seasons <- rbind(shots_12seasons, shots1617)
shots_12seasons <- rbind(shots_12seasons, shots1516)
shots_12seasons <- rbind(shots_12seasons, shots1415)
shots_12seasons <- rbind(shots_12seasons, shots1314)
shots_12seasons <- rbind(shots_12seasons, shots1213)
shots_12seasons <- rbind(shots_12seasons, shots1112)

## Once again we shall rename the mean column in our unified data frame ##
shots_12seasons <- shots_12seasons |> rename(Shots_Per_Game = mean)

## Once again we shall round the values so that they are neater ##
shots_12seasons <- round(shots_12seasons, 2)

### Isolating leaguewide powerplay percentage ###

## First, lets rename the column PP% to simply PPP so we can isolate it ##
teams2223 <- teams2223 |> rename("PPP" = "PP%")
teams2122 <- teams2122 |> rename("PPP" = "PP%")
teams2021 <- teams2021 |> rename("PPP" = "PP%")
teams1920 <- teams1920 |> rename("PPP" = "PP%")
teams1819 <- teams1819 |> rename("PPP" = "PP%")
teams1718 <- teams1718 |> rename("PPP" = "PP%")
teams1617 <- teams1617 |> rename("PPP" = "PP%")
teams1516 <- teams1516 |> rename("PPP" = "PP%")
teams1415 <- teams1415 |> rename("PPP" = "PP%")
teams1314 <- teams1314 |> rename("PPP" = "PP%")
teams1213 <- teams1213 |> rename("PPP" = "PP%")
teams1112 <- teams1112 |> rename("PPP" = "PP%")

## Now we shall get the mean for that column for each season ##
pp2223 <- teams2223 |> group_by(Season) |> summarize(mean = mean(PPP))
pp2122 <- teams2122 |> group_by(Season) |> summarize(mean = mean(PPP))
pp2021 <- teams2021 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1920 <- teams1920 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1819 <- teams1819 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1718 <- teams1718 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1617 <- teams1617 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1516 <- teams1516 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1415 <- teams1415 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1314 <- teams1314 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1213 <- teams1213 |> group_by(Season) |> summarize(mean = mean(PPP))
pp1112 <- teams1112 |> group_by(Season) |> summarize(mean = mean(PPP))

## And once again we shall organize our findings into a master dataframe ##
pp_12seasons <- rbind(pp2223, pp2122)
pp_12seasons <- rbind(pp_12seasons, pp2021)
pp_12seasons <- rbind(pp_12seasons, pp1920)
pp_12seasons <- rbind(pp_12seasons, pp1819)
pp_12seasons <- rbind(pp_12seasons, pp1718)
pp_12seasons <- rbind(pp_12seasons, pp1617)
pp_12seasons <- rbind(pp_12seasons, pp1516)
pp_12seasons <- rbind(pp_12seasons, pp1415)
pp_12seasons <- rbind(pp_12seasons, pp1314)
pp_12seasons <- rbind(pp_12seasons, pp1213)
pp_12seasons <- rbind(pp_12seasons, pp1112)

## Let's rename the mean column ##
pp_12seasons <- pp_12seasons |> rename(Power_play_percentage = mean)

## And lastly, let's round the values ##
pp_12seasons <- round(pp_12seasons, 2)

### Making a data frame for the model ###

## We want to add penalty data to our model dataset, so lets grab it ##
pen_drawn <- penalties |> select(`Pen Drawn/60`)
model_data_2223 <- cbind(teams2223, pen_drawn)
model_data_2223 <- model_data_2223 |> rename(
  "GFGP" = "GF/GP",
  "Pen60" = "Pen Drawn/60"
)

## Next lets get team shooting percentage ##
shooting_pct <- shooting |> select(`S%`)
model_data_2223 <- cbind(model_data_2223, shooting_pct)
model_data_2223 <- model_data_2223 |> rename(
  "SPct" = "S%"
)



#### Save data ####
## Let's save the 3 master dataframes we created

write_csv(agfpg_12seasons, here::here("outputs/data/avgoals_12seasons.csv"))
write_csv(shots_12seasons, here::here("outputs/data/avshots_12seasons.csv"))
write_csv(pp_12seasons, here::here("outputs/data/pp_12seasons.csv"))
write_csv(model_data_2223, here::here("outputs/data/leaguedata2223.csv"))

