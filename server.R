#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Server.R
library(shiny)
library(DT)


data =  read.csv(file="out.csv", header=TRUE, sep=",")
str(data)
cols = colnames(data)
print(cols)
cols_dont_want= c("SellerName", "ProductLink")

! names(data) %in% cols_dont_want
data2Display = data[, ! names(data) %in% cols_dont_want, drop = F]
shinyServer(function(input, output){
    output$mytable <- DT::renderDataTable({
        
        DT::datatable(data2Display, escape = FALSE) # HERE
    })
})