
ui <- fluidPage(
  titlePanel("Pollen counts and top species for US cities"),
  sidebarLayout(
    sidebarPanel(
      selectInput('state', 
                  'Select a state',
                  choices = unique(cities_pollen$state),
                  selected = 'Tennessee'),
      selectInput('city', 
                  "Select a city",
                  choices = unique(cities_pollen$city),
                  selected = "Memphis")
    ),
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Plots", plotOutput("Avragepollen"), plotOutput("Topspecies")),
                  tabPanel("Map of pollen count by species and site", leafletOutput("mymap"), p(), actionButton("recalc", "New points"))
      )
    )
  )
)