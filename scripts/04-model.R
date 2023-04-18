#### Preamble ####
# Purpose: Generates a linear model based on NHL data
# Author: Jason Ngo
# Data: Apr 16 2023
# Contact: jason_ngo@live.com
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
model_league_data <- read_csv("outputs/data/leaguedata2223.csv")

### Model data ####
goals_model <-
  stan_glm(
    formula = GFGP ~ SPct + PPP + Pen60,
    data = model_league_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )


#### Save model ####
saveRDS(
  goals_model,
  file = "outputs/models/goals_model.rds"
)


