library(shiny)
BMI <- function(Height, Weight) (Weight/Height^2)
BMI_sd <- function(Height, Weight) {
  BMI <-(Weight/Height^2)
  message = "Waiting for your inputs......"
  if (BMI >= 25) {message = "You are overweight!"}
  else if (BMI <= 18.5) {message = "You are underweight!"}
  else {message = "Congratulations! You are normal!"}
  message
}

shinyServer(
  function(input, output) {
    output$HeightValue <- renderPrint({input$Height})
    output$WeightValue <- renderPrint({input$Weight})
    output$BMI <- renderPrint({
      BMI(input$Height, input$Weight)
    })
    output$BMI_message <- renderPrint({
      BMI_sd(input$Height, input$Weight)
    })
  }
)