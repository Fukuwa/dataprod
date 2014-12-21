library(shiny)

shinyUI(fluidPage(
    # Application title
    titlePanel("Password generator"),

    sidebarLayout(
        sidebarPanel(
            h4(helpText("Password choices!")),

            checkboxGroupInput(inputId = "id1", label = "Characters and numbers",
                c("letters (lower case)" = "1",
                  "LETTERS (upper case)" = "2",
                  "Numbers 0:9" = "3",
                  "Special characters (#, _, &, %, $)" = 4)),
            
            selectInput(inputId = "id2",
                label = "Choose the length",
                choices = 1:24,
                selected = 8),
            
            sliderInput(inputId = "id3", label = "Number of passwords to generate",
                value = 1, min = 1, max = 12, step = 1),
                
            actionButton("b1", "Generate!")
        ),

    mainPanel(
        h3('Results'),
        h4('Choices made'),
        verbatimTextOutput("id1"),
        h4('Number of passwords'),
        verbatimTextOutput("id3"),
        HTML("Documentation. <br/> <br/>
           This is a password generator. <br/> Make choices from the menu
           on the left and click enter. To get new codes, click enter again. Recommended
           length of a password is already selected (8 characters).
           Passwords will not be generated if no choices are made. <br/>
           There is no save option, since passwords should not be saved lightly. It is possible,
           however, to double click on a password and copy it (does not work well while
           special characters are enabled).
           <br/>
           <br/>"),
        htmlOutput("codes")
    )
    )
))