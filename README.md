#Title: Runny Nose and Watery Eyes: Exploring Pollen Levelsacross the United States (by Kedir Turi)

Executive Summary: One of the criteria used to evaluate cities for livability is suitability of its environment for healthy life.  Allergy is a major acute and chronic health issue that affect people in The United States. A person considering moving to new place may think twice about the prevalence of an allergen s/he is sensitized to. This project summarizes pollen allergen information in easily accessible format in shiny application.

Motivation: When considering moving to new place, one of the considerations for evaluating livability of city is health risk. Allergy represents major health issue in united states. People may want to know if the allergen they are sensitized to is present when they move to new place. Moreover, current allergy test, which is based on the IgE (body's immune response) to the allergen, is universal and not tailored to the regional differences in allergen prevalence. For example, top pollen allergen species in Nashville may not be top pollen allergen species in Atlanta or Seattle. Testing for Oak pollen allergen may make sense in Nashville, but not in Memphis where ragweed is top pollen specie. Although, air pollen level is forecasted through weather channels, this fluctuates with the weather itself. The historical pollen count data, which tells a better story, has not been compiled for allergen physicians and allergen test making companies in well organized and easily accessible manner.

Data Question: The question I wanted to answer with this project is that what pollen species are most prevalence in 1000 US cities?  If data is accessible, I will also include time series plot to show mean peak and low periods of pollen count over the years. 

Data Sources: Pollen count data was extracted from Neotoma Paleoecology Database. The data was compiled from scientific publications of pollen counts throughout north America and Greenland locations from 2005-2015 by Whittemore et al. The original reference papers Whitmore et al. (2005). Modern Pollen Data from North American and Greenland for Multi-scale Paleoenvironmental Applications. Quaternary Science Reviews 24: 1828-1848. The database was updated up until 2015 and collected by Paleo ecologists for research purposes. The other database for pollen counts available is by American Academy of Allergy, Asthma & Immunology (AAAAI) National Allergy Bureau, which is collected from rooftop tool and can only be purchased for research purposes. Unfortunately, this project is unfunded and could not obtain this latest data. Perhaps this can be updated when funding is secured, and objective is broadened for the project. The latitude and longitude of US cities with population of 1000 or more were extracted from Database of World Cities.   				

Data cleaning and organization: The pollen data restricted to only continental US cities. Pollen species (family) was relabeled from scientific names to common names. species with no data for all locations were removed.

Calculating pollen count and species per city: pollen counts were calculated for cities based on pollen count stations within 100km radius of the city. Multiple station may contribute to a city and cities may share the same stations. Average of the stations were calculate to obtain city level pollen count. 

Shiny app display: The shiny app lets users select a state and city to display the data. In the first tab, two bar plots Bar plots display. The firs bar plot shows the average pollen count of cities in a selected state. The second bar plot shows up to 10 pollen species for the selected city ranked based on the pollen counts. The second tab shows a map of pollen count per species per station/location in continental US.
