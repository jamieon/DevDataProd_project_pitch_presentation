library(shiny)  
## Body Mass Index chart & its parameters
ht = seq(1.2,2.2, length.out=1000)
wt = seq(40,140, length.out=1000)
wtht = expand.grid(x=ht, y=wt)
bmi = function(h,w) { w /(h*h)}
bmiwtht = matrix(bmi(wtht$x,wtht$y),length(ht),length(wt))
##Server
shinyServer( 
    function(input, output) {
#BMI
    BMI <- reactive({
        round( input$weight / (input$height/100)^2, digits=1 )
    })
    output$text1 <- renderText({
        paste("(Weight", input$weight, "kg, and Height", input$height, "cm)")
    })
    output$BMItext <- renderText({
        BMI()
    })
    output$main_plot <- renderPlot({
        par(mar=c(4,4,0,0))
        contour(ht,wt,bmiwtht,levels = c(18.5,25,30), drawlabels=FALSE,
                xlab="Height (m)",ylab="Weight (kg)")
        text(1.4,90,"Obese",cex=2,srt=45)
        text(1.71,80,"Overweight",cex=2,srt=32)
        text(1.75,67,"Normal",cex=2,srt=28)
        text(1.95,54,"Underweight",cex=2,srt=22)
##BMI observation
        points((input$height)/100, input$weight, pch = 21, bg = "red", cex = 2)
    })
    }
)
