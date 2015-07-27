library(shiny)   
##User interface
shinyUI(fluidPage(
##Name of app
    titlePanel("BMI Calculator"),
#Inputs
    sidebarLayout(
        sidebarPanel(
            h4("Input your details:"),
            numericInput("weight", "Weight, kg:", 60),
            numericInput("height", "Height, cm:", 160),
            h4("BMI Calculation:"),
            p("BMI = Weight(kg) / Height(m)^2")
        ),
##Plotting output
        mainPanel(
            textOutput("text1"),
            h4("BMI:"),
            verbatimTextOutput("BMItext"),
            h4("BMI classification:"),            
            plotOutput(outputId = "main_plot", height = "400px")
        )
    )
))
