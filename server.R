server <- function(input, output) {
  library(MASS)
  require(graphics)
  
  EyeHairFreq <- apply( HairEyeColor, c("Eye","Hair"), sum ) # Sum across sex
  EyeHairProp <- 100*EyeHairFreq / sum( EyeHairFreq ) #joint proportions, Table 4.1
  x <- apply(HairEyeColor, c(1, 2), sum)
  
  output$selected_var_hair <- renderText({ 
    paste("You have selected", input$var_hair, "hair.")
  })
  
  
  output$selected_var_eye <- renderText({ 
    paste("You have selected", input$var_eye, "eyes.")
  })
  
  dataInput <- reactive({
    #Retrieve percentage and round it to 3 decimals
    format(round(EyeHairProp[input$var_eye , input$var_hair], 3), nsmall = 3)
  })
  
  output$var_percentage <- renderText({ 
    #Prepare string to be shown to the user
    paste("The percentage of people with", input$var_hair, "and", input$var_eye, "is", dataInput(), "%.")
  })
  
  output$plot <- renderPlot({
    mosaicplot(EyeHairFreq, main = "", shade = TRUE, legend = FALSE, cex.axis = 0.8)
  })
}

