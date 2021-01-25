library(nngeo)
library(maps)
library(GSODR)
library(jsonlite)
library(tidyverse)
library(leaflet)
library(shiny)
library(shinythemes)

#load data
cities_pollen_spec_long_nogeo<-read.csv("cities_pollen_spec_long_nogeo.csv")
cities_pollen<- read.csv("cities_pollen_nogeo.csv")
pollen_spec_clean_usa<- read.csv("pollen_spec_clean_usa.csv")
