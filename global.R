# GLOBAL.R
# This is the global for all of the shiny apps in childes-db. 

# --------------------- LIBRARIES ---------------------

library(shiny)
library(tidyverse)
library(feather)
library(ggthemes)
library(magrittr)
library(childesr)
library(tidytext)
library(stringr)
library(forcats)

# --------------------- CONSTANTS ---------------------

DAYS_PER_YEAR <- 365.25
DAYS_PER_MONTH <- DAYS_PER_YEAR / 12
MONTHS_PER_YEAR <- 12
MIN_N_FOR_BIGRAMS <- 50

# --------------------- SHARED DATA LOADING ---------------------

# CHILDES DATA
collections_df <- get_collections() %>% tbl_df() 
corpora_df <- get_corpora() %>% tbl_df()
participants_df <- get_participants() %>% 
  tbl_df()
collections <- collections_df$collection_name