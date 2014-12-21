library(shiny)

# id1 characters and numbers
# id2 length
# id3 number of passwords

# The function that generates the password(s)

codeGen = function(choice = input$id1, passLength = input$id2, count = input$id3) {

    codeVector = c()
    # special vector can be modified to include or exclude characters
    special = c("#", "_", "&", "%", "$")
    randomString = c(1:count)
    for (i in 1:count) {
    
        if (length(choice) < 1) { return("No boxes selected!") }
    
        for (item in 1:length(choice)) {
            if ( any(choice[item] == "1") ) {
                codeVector = c(codeVector, letters)
            } else if ( any(choice[item] == "2") ) {
                codeVector = c(codeVector, LETTERS)
            } else if ( any(choice[item] == "3") ) {
                codeVector = c(codeVector, 0:9)
            } else { codeVector = c(codeVector, special) }
        }
    
        randomString[i] = paste(sample(codeVector, passLength, replace = TRUE), collapse = "")

    }
    return(randomString)
}

# In shinyServer, a button (b1) isolates the function and runs it if clicked

shinyServer(
    function(input, output) {
        
        output$id1 <- renderPrint({input$id1})
        output$id3 <- renderPrint({input$id3})
        output$codes <- renderUI({
            input$b1
            isolate(HTML(paste(codeGen(input$id1, input$id2, input$id3), "<br/> <br/>")))
        })
    }
)