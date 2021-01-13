library(nngeo)
library(maps)
library(GSODR)
library(jsonlite)
library(tidyverse)

#load data
cities_pollen_spec_long<-st_read("cities_pollen_spec_long.geojson")
cities_pollen<- st_read("cities_pollen.geojson")

