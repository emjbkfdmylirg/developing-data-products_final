#setwd("D:\Rcode")
library(shiny)

#BMI = ( Weight in Pounds / ( Height in meter x Height in meter ) )
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Caculator"),
    
    sidebarPanel(
      numericInput('Weight', 'Weight  kg', 80, min = 20, max = 300, step = 1),
      numericInput('Height', 'Height  m', 1.75, min = 0, max = 3, step = 0.01),
      submitButton('Submit'),
      h3("                   "),
      h3("                   "),
      h3("BMI Explanation:"),
      p("The body mass index (BMI), is a measure of relative weight based on an individual's mass and height. Its mathematical formula is {Weight/Height^2)}. If your BMI <= 18.5, you are underweight; if your BMI >= 25, you are overweight; if your BMI is in between, you are normal. 
        
        To caculate your BMI, simply put your weight in pounds and height in inches in the two input boxes above.") 
      ),
    
    
    mainPanel(
      h3('Results of Your BMI'),
      h4('Your Weight entered in kg:'),
      verbatimTextOutput("WeightValue"),
      h4('Your Height entered in meter:'),
      verbatimTextOutput("HeightValue"),
      h4('Your BMI is:'),
      verbatimTextOutput("BMI"),
      h4('Your BMI category is:'),
      verbatimTextOutput("BMI_message")
    )
      )
  )