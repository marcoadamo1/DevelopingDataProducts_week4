ui <- fluidPage(
  titlePanel("Relation between hair and eye colour"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Data selection"),
      selectInput("var_hair", 
                                   label = "Choose a hair color",
                                   choices = c("Black", 
                                               "Brown",
                                               "Red", 
                                               "Blond"),
                                   selected = "Black"),
      selectInput("var_eye", 
                  label = "Choose a eye color",
                  choices = c("Brown", 
                              "Blue",
                              "Hazel", 
                              "Green"),
                  selected = "Brown")
      
      ),
    
    mainPanel(
      h3("Statistics"),
      textOutput("selected_var_hair"),
      textOutput("selected_var_eye"),
      h3(""),
      textOutput("var_percentage"),
      h3(""),
      h3("Mosaic graph"),
      plotOutput("plot")
    )
  )
  )


# sidebarLayout(
#   sidebarPanel(
#     helpText("Create demographic maps with 
#                information from the 2010 US Census."),
#     
#     selectInput("var", 
#                 label = "Choose a variable to display",
#                 choices = c("Percent White", 
#                             "Percent Black",
#                             "Percent Hispanic", 
#                             "Percent Asian"),
#                 selected = "Percent White"),
#     
#     sliderInput("range", 
#                 label = "Range of interest:",
#                 min = 0, max = 100, value = c(0, 100))
#   ),
#   
#   mainPanel(
#     textOutput("selected_var")
#   )
# )