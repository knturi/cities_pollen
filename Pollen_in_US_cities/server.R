
library(shiny)
server <- function(input, output) {
  Average_city_pollen<- cities_pollen %>%
    group_by(city, state) %>%
    summarize(city_pollen=mean(POLLSUM, na.rm = TRUE))
  reactive_pollen <- reactive({
    Average_city_pollen<-Average_city_pollen %>%
      arrange(state, city, desc(city_pollen), by_group=TRUE) %>%
      dplyr::filter(state==input$state) %>%
      mutate(city = fct_reorder(city, desc(city_pollen)))
  }
  )
  reactive_species <- reactive({
    cities_pollen_spec_long %>%
      filter(value!=0| value!=NA) %>%
      group_by(state, city) %>% 
      arrange(state, city, desc(value), by_group=TRUE) %>% 
      slice_max(order_by = value, n=10) %>% 
      filter(state==input$state & city==input$city) %>%
      mutate(species = fct_reorder(species, desc(value)))
  }
  )
  
  output$Avragepollen <- renderPlot(
    ggplot(reactive_pollen()) + geom_col(aes(x=reorder(city, -city_pollen), y=city_pollen),fill="steelblue") +
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1) ) +
              labs(title="Cities with total pollen count",
                   x ="Cities name", y = "Pollen count")
            
    )
  output$Topspecies <- renderPlot(
    ggplot(reactive_species(), aes(species, value)) + 
    geom_col(fill="steelblue") +
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
      labs(title="Top pollen species",
           x ="Species name", y = "Pollen count")
  )
}

# Run the application 
#shinyApp(ui = ui, server = server)
