#### Preamble ####
# Purpose: Downloading dataset from Spotify and saving it into raw data
# Author: Zitong Guo
# Date: Occtober 10, 2024
# Contact: jenny.guo@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install package "devtools" and using that to install package
# from github given charlie86/spotifyr.

#### Workspace setup ###
#install.packages("devtools")
#devtools::install_github('charlie86/spotifyr')
library(spotifyr)
library(usethis)
edit_r_environ()

#### Download data ####
ed_sheeran <- get_artist_audio_features("ed sheeran")

#### Save data ####
saveRDS(ed_sheeran, "data/00-raw_data/ed sheeran.rds")
