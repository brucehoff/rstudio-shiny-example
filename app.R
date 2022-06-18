library(shiny)

# Define UI for displaying current time ----
ui <- fluidPage(

  h2(textOutput("currentTime"))

)

# Define server logic to show current time, update every second ----
server <- function(input, output, session) {

  output$currentTime <- renderText({
    invalidateLater(1000, session)
    paste("The current time is", Sys.time())
    paste("The value of env1 is: ", Sys.getenv("env1", unset="not set"))
    paste("The value of env2 is: ", Sys.getenv("env2", unset="not set"))
  })

}

# Create Shiny app ----
shinyApp(ui, server)
