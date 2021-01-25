
ui <- fluidPage(theme = shinytheme("superhero"),
                titlePanel(h1("Distribution of Pollen Source Genera and Pollen Count Variation by US States and Cities")),
                sidebarLayout(
                  sidebarPanel(
                    img(src = "pollenimage.png", height = 500, width = 450),
                    
                    selectInput('state',  
                                h3('Select a state'),
                                choices = unique(cities_pollen$state),
                                selected = 'Tennessee'),
                    selectInput('city', 
                                h3("Select a city"),
                                choices = unique(cities_pollen$city),
                                selected = "Memphis")
                  ),
                  mainPanel(
                    tabsetPanel(type = "tabs",
                                tabPanel(h2("Pollen Count Plots"), plotOutput("Avrg_st_pollen"), br(), plotOutput("Avrg_cty_pollen"), br(), plotOutput("citytopspecies")),
                                tabPanel(h2("Pollen Count Site and Species Map"), leafletOutput("mymap", height = 800), p(), actionButton("recalc", "New points")),
                                tabPanel(h2("Data Sources"), 
                                         p("Pollen count data was extracted from Neotoma Paleoecology Database. The data was compiled from scientific publications of pollen counts throughout north America and Greenland locations from 2005-2015 by Whittemore et al. 
                             The original reference papers Whitmore et al. (2005). Modern Pollen Data from North American and Greenland for Multi-scale Paleoenvironmental Applications. 
                             Quaternary Science Reviews 24: 1828-1848. The database was updated up until 2015 and collected by Paleo ecologists for research purposes. 
                             The latitude and longitude of US cities with population of 1000 or more were extracted from Database of World Cities.", style = "font-family: 'arial'; font-si24pt"))
                    )
                  )
                )
)
